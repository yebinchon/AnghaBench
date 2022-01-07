
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nr; int entries; scalar_t__ map; } ;
struct trace {TYPE_3__* evlist; TYPE_2__ filter_pids; } ;
struct TYPE_4__ {int threads; } ;
struct TYPE_6__ {TYPE_1__ core; } ;


 int bpf_map__set_filter_pids (scalar_t__,scalar_t__,int ) ;
 int perf_evlist__set_tp_filter_pids (TYPE_3__*,scalar_t__,int ) ;
 int perf_thread_map__pid (int ,int ) ;
 int trace__set_filter_loop_pids (struct trace*) ;

__attribute__((used)) static int trace__set_filter_pids(struct trace *trace)
{
 int err = 0;






 if (trace->filter_pids.nr > 0) {
  err = perf_evlist__set_tp_filter_pids(trace->evlist, trace->filter_pids.nr,
            trace->filter_pids.entries);
  if (!err && trace->filter_pids.map) {
   err = bpf_map__set_filter_pids(trace->filter_pids.map, trace->filter_pids.nr,
             trace->filter_pids.entries);
  }
 } else if (perf_thread_map__pid(trace->evlist->core.threads, 0) == -1) {
  err = trace__set_filter_loop_pids(trace);
 }

 return err;
}
