
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int has_br_stack; } ;


 scalar_t__ COMPUTE_CYCLES ;
 int SORT_MODE__DIFF ;
 int __cmd_diff () ;
 scalar_t__ check_file_brstack () ;
 scalar_t__ compute ;
 scalar_t__ data_init (int,char const**) ;
 int diff__config ;
 int diff_usage ;
 int hists__init () ;
 int options ;
 int parse_options (int,char const**,int ,int ,int ) ;
 TYPE_1__ pdiff ;
 int perf_config (int ,int *) ;
 int perf_quiet_option () ;
 scalar_t__ quiet ;
 int setup_pager () ;
 scalar_t__ setup_sorting (int *) ;
 int sort__mode ;
 int sort__setup_elide (int *) ;
 int symbol__annotation_init () ;
 scalar_t__ symbol__init (int *) ;
 scalar_t__ ui_init () ;
 int usage_with_options (int ,int ) ;

int cmd_diff(int argc, const char **argv)
{
 int ret = hists__init();

 if (ret < 0)
  return ret;

 perf_config(diff__config, ((void*)0));

 argc = parse_options(argc, argv, options, diff_usage, 0);

 if (quiet)
  perf_quiet_option();

 symbol__annotation_init();

 if (symbol__init(((void*)0)) < 0)
  return -1;

 if (data_init(argc, argv) < 0)
  return -1;

 if (check_file_brstack() < 0)
  return -1;

 if (compute == COMPUTE_CYCLES && !pdiff.has_br_stack)
  return -1;

 if (ui_init() < 0)
  return -1;

 sort__mode = SORT_MODE__DIFF;

 if (setup_sorting(((void*)0)) < 0)
  usage_with_options(diff_usage, options);

 setup_pager();

 sort__setup_elide(((void*)0));

 return __cmd_diff();
}
