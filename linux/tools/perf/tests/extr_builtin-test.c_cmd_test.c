
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int dummy; } ;
struct intlist {int dummy; } ;
struct TYPE_2__ {int priv_size; int sort_by_name; int try_vmlinux_path; } ;


 struct option const OPT_BOOLEAN (float,char*,int *,char*) ;
 struct option const OPT_END () ;
 struct option const OPT_INCR (char,char*,int *,char*) ;
 struct option const OPT_STRING (char,char*,char const**,char*,char*) ;
 int __cmd_test (int,char const**,struct intlist*) ;
 int dont_fork ;
 int hists__init () ;
 struct intlist* intlist__new (char const*) ;
 int parse_options_subcommand (int,char const**,struct option const*,char const* const*,char const**,int ) ;
 int perf_test__list (int,char const**) ;
 int rlimit__bump_memlock () ;
 int strcmp (char const*,char*) ;
 scalar_t__ symbol__init (int *) ;
 TYPE_1__ symbol_conf ;
 int verbose ;

int cmd_test(int argc, const char **argv)
{
 const char *test_usage[] = {
 "perf test [<options>] [{list <test-name-fragment>|[<test-name-fragments>|<test-numbers>]}]",
 ((void*)0),
 };
 const char *skip = ((void*)0);
 const struct option test_options[] = {
 OPT_STRING('s', "skip", &skip, "tests", "tests to skip"),
 OPT_INCR('v', "verbose", &verbose,
      "be more verbose (show symbol address, etc)"),
 OPT_BOOLEAN('F', "dont-fork", &dont_fork,
      "Do not fork for testcase"),
 OPT_END()
 };
 const char * const test_subcommands[] = { "list", ((void*)0) };
 struct intlist *skiplist = ((void*)0);
        int ret = hists__init();

        if (ret < 0)
                return ret;

 argc = parse_options_subcommand(argc, argv, test_options, test_subcommands, test_usage, 0);
 if (argc >= 1 && !strcmp(argv[0], "list"))
  return perf_test__list(argc - 1, argv + 1);

 symbol_conf.priv_size = sizeof(int);
 symbol_conf.sort_by_name = 1;
 symbol_conf.try_vmlinux_path = 1;

 if (symbol__init(((void*)0)) < 0)
  return -1;

 if (skip != ((void*)0))
  skiplist = intlist__new(skip);




 rlimit__bump_memlock();

 return __cmd_test(argc, argv, skiplist);
}
