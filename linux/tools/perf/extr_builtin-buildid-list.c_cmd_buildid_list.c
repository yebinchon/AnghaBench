
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 struct option const OPT_BOOLEAN (char,char*,int*,char*) ;
 struct option const OPT_END () ;
 struct option const OPT_INCR (char,char*,int *,char*) ;
 struct option const OPT_STRING (char,char*,int *,char*,char*) ;
 int input_name ;
 int parse_options (int,char const**,struct option const*,char const* const*,int ) ;
 int perf_session__list_build_ids (int,int) ;
 int setup_pager () ;
 int stdout ;
 scalar_t__ sysfs__fprintf_build_id (int ) ;
 int verbose ;

int cmd_buildid_list(int argc, const char **argv)
{
 bool show_kernel = 0;
 bool with_hits = 0;
 bool force = 0;
 const struct option options[] = {
 OPT_BOOLEAN('H', "with-hits", &with_hits, "Show only DSOs with hits"),
 OPT_STRING('i', "input", &input_name, "file", "input file name"),
 OPT_BOOLEAN('f', "force", &force, "don't complain, do it"),
 OPT_BOOLEAN('k', "kernel", &show_kernel, "Show current kernel build id"),
 OPT_INCR('v', "verbose", &verbose, "be more verbose"),
 OPT_END()
 };
 const char * const buildid_list_usage[] = {
  "perf buildid-list [<options>]",
  ((void*)0)
 };

 argc = parse_options(argc, argv, options, buildid_list_usage, 0);
 setup_pager();

 if (show_kernel)
  return !(sysfs__fprintf_build_id(stdout) > 0);

 return perf_session__list_build_ids(force, with_hits);
}
