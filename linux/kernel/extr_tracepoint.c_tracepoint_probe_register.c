
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {int dummy; } ;


 int TRACEPOINT_DEFAULT_PRIO ;
 int tracepoint_probe_register_prio (struct tracepoint*,void*,void*,int ) ;

int tracepoint_probe_register(struct tracepoint *tp, void *probe, void *data)
{
 return tracepoint_probe_register_prio(tp, probe, data, TRACEPOINT_DEFAULT_PRIO);
}
