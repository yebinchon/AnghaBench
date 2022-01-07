
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* long_name; } ;
struct cmd_struct {char* cmd; } ;


 int ARRAY_SIZE (void*) ;
 int CMD_DEBUGFS_DIR ;
 int CMD_EXEC_PATH ;
 int PERF_HTML_PATH ;
 void* commands ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int get_argv_exec_path () ;
 void* options ;
 scalar_t__ perf_debug_option (char const*) ;
 int perf_usage_string ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int puts (int ) ;
 int set_argv_exec_path (char const*) ;
 int set_buildid_dir (char const*) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int strlen (int ) ;
 scalar_t__ strstarts (char const*,int ) ;
 int system_path (int ) ;
 char* tracing_path_mount () ;
 int tracing_path_set (char const*) ;
 int usage (int ) ;
 int use_pager ;
 int version_verbose ;

__attribute__((used)) static int handle_options(const char ***argv, int *argc, int *envchanged)
{
 int handled = 0;

 while (*argc > 0) {
  const char *cmd = (*argv)[0];
  if (cmd[0] != '-')
   break;






  if (!strcmp(cmd, "--help") || !strcmp(cmd, "--version"))
   break;





  if (!strcmp(cmd, "-h")) {
   (*argv)[0] = "--help";
   break;
  }

  if (!strcmp(cmd, "-v")) {
   (*argv)[0] = "--version";
   break;
  }

  if (!strcmp(cmd, "-vv")) {
   (*argv)[0] = "version";
   version_verbose = 1;
   break;
  }




  if (strstarts(cmd, CMD_EXEC_PATH)) {
   cmd += strlen(CMD_EXEC_PATH);
   if (*cmd == '=')
    set_argv_exec_path(cmd + 1);
   else {
    puts(get_argv_exec_path());
    exit(0);
   }
  } else if (!strcmp(cmd, "--html-path")) {
   puts(system_path(PERF_HTML_PATH));
   exit(0);
  } else if (!strcmp(cmd, "-p") || !strcmp(cmd, "--paginate")) {
   use_pager = 1;
  } else if (!strcmp(cmd, "--no-pager")) {
   use_pager = 0;
   if (envchanged)
    *envchanged = 1;
  } else if (!strcmp(cmd, "--debugfs-dir")) {
   if (*argc < 2) {
    fprintf(stderr, "No directory given for --debugfs-dir.\n");
    usage(perf_usage_string);
   }
   tracing_path_set((*argv)[1]);
   if (envchanged)
    *envchanged = 1;
   (*argv)++;
   (*argc)--;
  } else if (!strcmp(cmd, "--buildid-dir")) {
   if (*argc < 2) {
    fprintf(stderr, "No directory given for --buildid-dir.\n");
    usage(perf_usage_string);
   }
   set_buildid_dir((*argv)[1]);
   if (envchanged)
    *envchanged = 1;
   (*argv)++;
   (*argc)--;
  } else if (strstarts(cmd, CMD_DEBUGFS_DIR)) {
   tracing_path_set(cmd + strlen(CMD_DEBUGFS_DIR));
   fprintf(stderr, "dir: %s\n", tracing_path_mount());
   if (envchanged)
    *envchanged = 1;
  } else if (!strcmp(cmd, "--list-cmds")) {
   unsigned int i;

   for (i = 0; i < ARRAY_SIZE(commands); i++) {
    struct cmd_struct *p = commands+i;
    printf("%s ", p->cmd);
   }
   putchar('\n');
   exit(0);
  } else if (!strcmp(cmd, "--list-opts")) {
   unsigned int i;

   for (i = 0; i < ARRAY_SIZE(options)-1; i++) {
    struct option *p = options+i;
    printf("--%s ", p->long_name);
   }
   putchar('\n');
   exit(0);
  } else if (!strcmp(cmd, "--debug")) {
   if (*argc < 2) {
    fprintf(stderr, "No variable specified for --debug.\n");
    usage(perf_usage_string);
   }
   if (perf_debug_option((*argv)[1]))
    usage(perf_usage_string);

   (*argv)++;
   (*argc)--;
  } else {
   fprintf(stderr, "Unknown option: %s\n", cmd);
   usage(perf_usage_string);
  }

  (*argv)++;
  (*argc)--;
  handled++;
 }
 return handled;
}
