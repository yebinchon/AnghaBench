
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int in; int out; int err; scalar_t__ pid; int * argv; scalar_t__ exec_cmd; int (* preexec_cb ) () ;scalar_t__* env; scalar_t__ dir; scalar_t__ stdout_to_stderr; scalar_t__ no_stdout; scalar_t__ no_stderr; scalar_t__ no_stdin; } ;
typedef int sbuf ;


 int ENOENT ;
 int ERR_RUN_COMMAND_EXEC ;
 int ERR_RUN_COMMAND_FORK ;
 int ERR_RUN_COMMAND_PIPE ;
 int STRERR_BUFSIZE ;
 scalar_t__ chdir (scalar_t__) ;
 int close (int) ;
 int close_pair (int*) ;
 int die (char*,int ,scalar_t__,int ) ;
 int dup2 (int,int) ;
 int dup_devnull (int) ;
 int errno ;
 int execv_cmd (int *) ;
 int execvp (int ,char* const*) ;
 int exit (int) ;
 int fflush (int *) ;
 scalar_t__ fork () ;
 scalar_t__ pipe (int*) ;
 int putenv (char*) ;
 int str_error_r (int,char*,int) ;
 scalar_t__ strchr (scalar_t__,char) ;
 int stub1 () ;
 int unsetenv (scalar_t__) ;

int start_command(struct child_process *cmd)
{
 int need_in, need_out, need_err;
 int fdin[2], fdout[2], fderr[2];
 char sbuf[STRERR_BUFSIZE];






 need_in = !cmd->no_stdin && cmd->in < 0;
 if (need_in) {
  if (pipe(fdin) < 0) {
   if (cmd->out > 0)
    close(cmd->out);
   return -ERR_RUN_COMMAND_PIPE;
  }
  cmd->in = fdin[1];
 }

 need_out = !cmd->no_stdout
  && !cmd->stdout_to_stderr
  && cmd->out < 0;
 if (need_out) {
  if (pipe(fdout) < 0) {
   if (need_in)
    close_pair(fdin);
   else if (cmd->in)
    close(cmd->in);
   return -ERR_RUN_COMMAND_PIPE;
  }
  cmd->out = fdout[0];
 }

 need_err = !cmd->no_stderr && cmd->err < 0;
 if (need_err) {
  if (pipe(fderr) < 0) {
   if (need_in)
    close_pair(fdin);
   else if (cmd->in)
    close(cmd->in);
   if (need_out)
    close_pair(fdout);
   else if (cmd->out)
    close(cmd->out);
   return -ERR_RUN_COMMAND_PIPE;
  }
  cmd->err = fderr[0];
 }

 fflush(((void*)0));
 cmd->pid = fork();
 if (!cmd->pid) {
  if (cmd->no_stdin)
   dup_devnull(0);
  else if (need_in) {
   dup2(fdin[0], 0);
   close_pair(fdin);
  } else if (cmd->in) {
   dup2(cmd->in, 0);
   close(cmd->in);
  }

  if (cmd->no_stderr)
   dup_devnull(2);
  else if (need_err) {
   dup2(fderr[1], 2);
   close_pair(fderr);
  }

  if (cmd->no_stdout)
   dup_devnull(1);
  else if (cmd->stdout_to_stderr)
   dup2(2, 1);
  else if (need_out) {
   dup2(fdout[1], 1);
   close_pair(fdout);
  } else if (cmd->out > 1) {
   dup2(cmd->out, 1);
   close(cmd->out);
  }

  if (cmd->dir && chdir(cmd->dir))
   die("exec %s: cd to %s failed (%s)", cmd->argv[0],
       cmd->dir, str_error_r(errno, sbuf, sizeof(sbuf)));
  if (cmd->env) {
   for (; *cmd->env; cmd->env++) {
    if (strchr(*cmd->env, '='))
     putenv((char*)*cmd->env);
    else
     unsetenv(*cmd->env);
   }
  }
  if (cmd->preexec_cb)
   cmd->preexec_cb();
  if (cmd->exec_cmd) {
   execv_cmd(cmd->argv);
  } else {
   execvp(cmd->argv[0], (char *const*) cmd->argv);
  }
  exit(127);
 }

 if (cmd->pid < 0) {
  int err = errno;
  if (need_in)
   close_pair(fdin);
  else if (cmd->in)
   close(cmd->in);
  if (need_out)
   close_pair(fdout);
  else if (cmd->out)
   close(cmd->out);
  if (need_err)
   close_pair(fderr);
  return err == ENOENT ?
   -ERR_RUN_COMMAND_EXEC :
   -ERR_RUN_COMMAND_FORK;
 }

 if (need_in)
  close(fdin[0]);
 else if (cmd->in)
  close(cmd->in);

 if (need_out)
  close(fdout[1]);
 else if (cmd->out)
  close(cmd->out);

 if (need_err)
  close(fderr[1]);

 return 0;
}
