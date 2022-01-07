
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sys_enter; } ;
struct TYPE_4__ {TYPE_1__ events; scalar_t__ map; } ;
struct trace {TYPE_2__ syscalls; } ;


 int trace__set_ev_qualifier_bpf_filter (struct trace*) ;
 int trace__set_ev_qualifier_tp_filter (struct trace*) ;

__attribute__((used)) static int trace__set_ev_qualifier_filter(struct trace *trace)
{
 if (trace->syscalls.map)
  return trace__set_ev_qualifier_bpf_filter(trace);
 if (trace->syscalls.events.sys_enter)
  return trace__set_ev_qualifier_tp_filter(trace);
 return 0;
}
