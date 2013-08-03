module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-concat'
  grunt.loadNpmTasks 'grunt-karma'
  grunt.initConfig
    karma:
      unit:
        configFile: 'karma.conf.js'
    connect:
      server:
        options:
          port: 9000
          base: '.'
          keepalive: true
    concat:
      dist:
        src: [
          'bower_components/jquery/jquery.min.js'
          'bower_components/handlebars/handlebars.js'
          'bower_components/ember/ember.min.js'
        ]
        dest: 'src/lib/app.min.js'

  grunt.task.registerTask 'local', ['concat', 'connect']
  grunt.task.registerTask 'test', ['concat', 'karma']
