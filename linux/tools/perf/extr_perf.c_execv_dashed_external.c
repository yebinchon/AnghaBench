
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ERR_RUN_COMMAND_EXEC ;
 scalar_t__ IS_RUN_COMMAND_ERR (int) ;
 scalar_t__ asprintf (char**,char*,char const*) ;
 int errno ;
 int exit (int) ;
 int pr_err (char*,char const*) ;
 int run_command_v_opt (char const**,int ) ;
 int zfree (char**) ;

__attribute__((used)) static void execv_dashed_external(const char **argv)
{
 char *cmd;
 const char *tmp;
 int status;

 if (asprintf(&cmd, "perf-%s", argv[0]) < 0)
  goto do_die;







 tmp = argv[0];
 argv[0] = cmd;





 status = run_command_v_opt(argv, 0);
 if (status != -ERR_RUN_COMMAND_EXEC) {
  if (IS_RUN_COMMAND_ERR(status)) {
do_die:
   pr_err("FATAL: unable to run '%s'", argv[0]);
   status = -128;
  }
  exit(-status);
 }
 errno = ENOENT;

 argv[0] = tmp;
 zfree(&cmd);
}
