
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int map; } ;
struct trace {TYPE_1__ filter_pids; } ;


 int trace__find_bpf_map_by_name (struct trace*,char*) ;

__attribute__((used)) static void trace__set_bpf_map_filtered_pids(struct trace *trace)
{
 trace->filter_pids.map = trace__find_bpf_map_by_name(trace, "pids_filtered");
}
