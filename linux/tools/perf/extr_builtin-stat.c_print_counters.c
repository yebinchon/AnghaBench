
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_3__ {scalar_t__ is_pipe; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 scalar_t__ STAT_RECORD ;
 int evsel_list ;
 int perf_evlist__print_counters (int ,int *,int *,struct timespec*,int,char const**) ;
 TYPE_2__ perf_stat ;
 int stat_config ;
 int target ;

__attribute__((used)) static void print_counters(struct timespec *ts, int argc, const char **argv)
{

 if (STAT_RECORD && perf_stat.data.is_pipe)
  return;

 perf_evlist__print_counters(evsel_list, &stat_config, &target,
        ts, argc, argv);
}
