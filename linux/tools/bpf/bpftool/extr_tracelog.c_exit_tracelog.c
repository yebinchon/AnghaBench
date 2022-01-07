
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buff ;
 int exit (int ) ;
 int fclose (int ) ;
 int free (int ) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_destroy (int *) ;
 int jsonw_end_array (int ) ;
 int trace_pipe_fd ;

__attribute__((used)) static void exit_tracelog(int signum)
{
 fclose(trace_pipe_fd);
 free(buff);

 if (json_output) {
  jsonw_end_array(json_wtr);
  jsonw_destroy(&json_wtr);
 }

 exit(0);
}
