
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_handler; } ;
typedef scalar_t__ ssize_t ;


 int PATH_MAX ;
 int SIGHUP ;
 int SIGINT ;
 int SIGTERM ;
 char* buff ;
 int errno ;
 int exit_tracelog ;
 int fclose (int ) ;
 int fopen (char*,char*) ;
 int free (char*) ;
 int get_tracefs_pipe (char*) ;
 scalar_t__ getline (char**,size_t*,int ) ;
 scalar_t__ json_output ;
 int json_wtr ;
 int jsonw_start_array (int ) ;
 int jsonw_string (int ,char*) ;
 int p_err (char*,int ) ;
 int printf (char*,char*) ;
 int sigaction (int ,struct sigaction const*,int *) ;
 int strerror (int ) ;
 int trace_pipe_fd ;

int do_tracelog(int argc, char **argv)
{
 const struct sigaction act = {
  .sa_handler = exit_tracelog
 };
 char trace_pipe[PATH_MAX];
 size_t buff_len = 0;

 if (json_output)
  jsonw_start_array(json_wtr);

 if (!get_tracefs_pipe(trace_pipe))
  return -1;

 trace_pipe_fd = fopen(trace_pipe, "r");
 if (!trace_pipe_fd) {
  p_err("could not open trace pipe: %s", strerror(errno));
  return -1;
 }

 sigaction(SIGHUP, &act, ((void*)0));
 sigaction(SIGINT, &act, ((void*)0));
 sigaction(SIGTERM, &act, ((void*)0));
 while (1) {
  ssize_t ret;

  ret = getline(&buff, &buff_len, trace_pipe_fd);
  if (ret <= 0) {
   p_err("failed to read content from trace pipe: %s",
         strerror(errno));
   break;
  }
  if (json_output)
   jsonw_string(json_wtr, buff);
  else
   printf("%s", buff);
 }

 fclose(trace_pipe_fd);
 free(buff);
 return -1;
}
