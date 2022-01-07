
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ordered_events; int no_warn; int fork; int exit; int comm; int mmap2; int mmap; } ;
struct report {TYPE_1__ tool; scalar_t__ mmaps_mode; } ;


 int memset (TYPE_1__*,int ,int) ;
 int perf_event__process_comm ;
 int perf_event__process_exit ;
 int perf_event__process_fork ;
 int perf_event__process_mmap ;
 int perf_event__process_mmap2 ;

__attribute__((used)) static void tasks_setup(struct report *rep)
{
 memset(&rep->tool, 0, sizeof(rep->tool));
 rep->tool.ordered_events = 1;
 if (rep->mmaps_mode) {
  rep->tool.mmap = perf_event__process_mmap;
  rep->tool.mmap2 = perf_event__process_mmap2;
 }
 rep->tool.comm = perf_event__process_comm;
 rep->tool.exit = perf_event__process_exit;
 rep->tool.fork = perf_event__process_fork;
 rep->tool.no_warn = 1;
}
