
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* feature; char* command; int (* process_fn ) () ;} ;
struct TYPE_3__ {char* feature; int (* process_fn ) () ;} ;


 int create_cpu_map () ;
 int debug_printf (char*,char*,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 TYPE_2__* isst_cmds ;
 TYPE_1__* isst_help_cmds ;
 size_t optind ;
 int parse_cmd_args (int,size_t,char**) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int stub1 () ;
 int stub2 () ;

void process_command(int argc, char **argv)
{
 int i = 0, matched = 0;
 char *feature = argv[optind];
 char *cmd = argv[optind + 1];

 if (!feature || !cmd)
  return;

 debug_printf("feature name [%s] command [%s]\n", feature, cmd);
 if (!strcmp(cmd, "-h") || !strcmp(cmd, "--help")) {
  while (isst_help_cmds[i].feature) {
   if (!strcmp(isst_help_cmds[i].feature, feature)) {
    isst_help_cmds[i].process_fn();
    exit(0);
   }
   ++i;
  }
 }

 create_cpu_map();

 i = 0;
 while (isst_cmds[i].feature) {
  if (!strcmp(isst_cmds[i].feature, feature) &&
      !strcmp(isst_cmds[i].command, cmd)) {
   parse_cmd_args(argc, optind + 1, argv);
   isst_cmds[i].process_fn();
   matched = 1;
   break;
  }
  ++i;
 }

 if (!matched)
  fprintf(stderr, "Invalid command\n");
}
