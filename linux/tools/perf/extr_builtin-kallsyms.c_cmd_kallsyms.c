
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int dummy; } ;
struct TYPE_2__ {int sort_by_name; int * vmlinux_name; int try_vmlinux_path; } ;


 struct option const OPT_END () ;
 struct option const OPT_INCR (char,char*,int *,char*) ;
 int __cmd_kallsyms (int,char const**) ;
 int parse_options (int,char const**,struct option const*,char const* const*,int ) ;
 scalar_t__ symbol__init (int *) ;
 TYPE_1__ symbol_conf ;
 int usage_with_options (char const* const*,struct option const*) ;
 int verbose ;

int cmd_kallsyms(int argc, const char **argv)
{
 const struct option options[] = {
 OPT_INCR('v', "verbose", &verbose, "be more verbose (show counter open errors, etc)"),
 OPT_END()
 };
 const char * const kallsyms_usage[] = {
  "perf kallsyms [<options>] symbol_name",
  ((void*)0)
 };

 argc = parse_options(argc, argv, options, kallsyms_usage, 0);
 if (argc < 1)
  usage_with_options(kallsyms_usage, options);

 symbol_conf.sort_by_name = 1;
 symbol_conf.try_vmlinux_path = (symbol_conf.vmlinux_name == ((void*)0));
 if (symbol__init(((void*)0)) < 0)
  return -1;

 return __cmd_kallsyms(argc, argv);
}
