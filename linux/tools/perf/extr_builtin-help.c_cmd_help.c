
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;
typedef enum help_format { ____Placeholder_help_format } help_format ;






 struct option OPT_BOOLEAN (char,char*,int*,char*) ;
 struct option OPT_END () ;
 struct option OPT_SET_UINT (char,char*,int*,char*,int) ;
 int list_commands (char*,int *,int *) ;
 int list_common_cmds_help () ;
 int load_command_list (char*,int *,int *) ;
 int main_cmds ;
 int other_cmds ;
 int parse_options_subcommand (int,char const**,struct option*,char const* const*,char const**,int ) ;
 int perf_config (int ,int*) ;
 int perf_help_config ;
 char* perf_more_info_string ;
 char* perf_usage_string ;
 int printf (char*,char*) ;
 int show_html_page (char const*) ;
 int show_info_page (char const*) ;
 int show_man_page (char const*) ;

int cmd_help(int argc, const char **argv)
{
 bool show_all = 0;
 enum help_format help_format = 130;
 struct option builtin_help_options[] = {
 OPT_BOOLEAN('a', "all", &show_all, "print all available commands"),
 OPT_SET_UINT('m', "man", &help_format, "show man page", 130),
 OPT_SET_UINT('w', "web", &help_format, "show manual in web browser",
   128),
 OPT_SET_UINT('i', "info", &help_format, "show info page",
   131),
 OPT_END(),
 };
 const char * const builtin_help_subcommands[] = {
  "buildid-cache", "buildid-list", "diff", "evlist", "help", "list",
  "record", "report", "bench", "stat", "timechart", "top", "annotate",
  "script", "sched", "kallsyms", "kmem", "lock", "kvm", "test", "inject", "mem", "data",






 ((void*)0) };
 const char *builtin_help_usage[] = {
  "perf help [--all] [--man|--web|--info] [command]",
  ((void*)0)
 };
 int rc;

 load_command_list("perf-", &main_cmds, &other_cmds);

 rc = perf_config(perf_help_config, &help_format);
 if (rc)
  return rc;

 argc = parse_options_subcommand(argc, argv, builtin_help_options,
   builtin_help_subcommands, builtin_help_usage, 0);

 if (show_all) {
  printf("\n Usage: %s\n\n", perf_usage_string);
  list_commands("perf commands", &main_cmds, &other_cmds);
  printf(" %s\n\n", perf_more_info_string);
  return 0;
 }

 if (!argv[0]) {
  printf("\n usage: %s\n\n", perf_usage_string);
  list_common_cmds_help();
  printf("\n %s\n\n", perf_more_info_string);
  return 0;
 }

 switch (help_format) {
 case 130:
  rc = show_man_page(argv[0]);
  break;
 case 131:
  rc = show_info_page(argv[0]);
  break;
 case 128:
  rc = show_html_page(argv[0]);
  break;
 case 129:

 default:
  rc = -1;
  break;
 }

 return rc;
}
