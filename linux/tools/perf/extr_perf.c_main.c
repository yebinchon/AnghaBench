
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbuf ;


 scalar_t__ ENOENT ;
 int EXEC_PATH_ENVIRONMENT ;
 int PERF_EXEC_PATH ;
 int PERF_PAGER_ENVIRONMENT ;
 int PREFIX ;
 int STRERR_BUFSIZE ;
 int cmd_trace (int,char const**) ;
 int commit_pager_choice () ;
 int config_exclusive_filename ;
 scalar_t__ errno ;
 int exec_cmd_init (char*,int ,int ,int ) ;
 char* extract_argv0_path (char const*) ;
 int fprintf (int ,char*,...) ;
 int getenv (char*) ;
 int handle_internal_command (int,char const**) ;
 int handle_options (char const***,int*,int *) ;
 char* help_unknown_cmd (char const*) ;
 int libperf_init (int ) ;
 int libperf_print ;
 int list_common_cmds_help () ;
 int pager_init (int ) ;
 int perf_config (int ,int *) ;
 int perf_debug_setup () ;
 int perf_default_config ;
 char* perf_more_info_string ;
 char* perf_usage_string ;
 int printf (char*,char*) ;
 int pthread__block_sigwinch () ;
 int run_argv (int*,char const***) ;
 int set_buildid_dir (int *) ;
 int setup_path () ;
 int srandom (int ) ;
 int stderr ;
 char* str_error_r (scalar_t__,char*,int) ;
 scalar_t__ strstarts (char const*,char*) ;
 int test_attr__init () ;
 int time (int *) ;

int main(int argc, const char **argv)
{
 int err;
 const char *cmd;
 char sbuf[STRERR_BUFSIZE];


 exec_cmd_init("perf", PREFIX, PERF_EXEC_PATH, EXEC_PATH_ENVIRONMENT);
 pager_init(PERF_PAGER_ENVIRONMENT);

 libperf_init(libperf_print);

 cmd = extract_argv0_path(argv[0]);
 if (!cmd)
  cmd = "perf-help";

 srandom(time(((void*)0)));


 config_exclusive_filename = getenv("PERF_CONFIG");

 err = perf_config(perf_default_config, ((void*)0));
 if (err)
  return err;
 set_buildid_dir(((void*)0));
 if (strstarts(cmd, "perf-")) {
  cmd += 5;
  argv[0] = cmd;
  handle_internal_command(argc, argv);




  cmd -= 5;
  argv[0] = cmd;
 }
 if (strstarts(cmd, "trace")) {





  fprintf(stderr,
   "trace command not available: missing audit-libs devel package at build time.\n");
  goto out;

 }

 argv++;
 argc--;
 handle_options(&argv, &argc, ((void*)0));
 commit_pager_choice();

 if (argc > 0) {
  if (strstarts(argv[0], "--"))
   argv[0] += 2;
 } else {

  printf("\n usage: %s\n\n", perf_usage_string);
  list_common_cmds_help();
  printf("\n %s\n\n", perf_more_info_string);
  goto out;
 }
 cmd = argv[0];

 test_attr__init();







 setup_path();





 pthread__block_sigwinch();

 perf_debug_setup();

 while (1) {
  static int done_help;

  run_argv(&argc, &argv);

  if (errno != ENOENT)
   break;

  if (!done_help) {
   cmd = argv[0] = help_unknown_cmd(cmd);
   done_help = 1;
  } else
   break;
 }

 fprintf(stderr, "Failed to run command '%s': %s\n",
  cmd, str_error_r(errno, sbuf, sizeof(sbuf)));
out:
 return 1;
}
