
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;
struct ce_unbind {int res; struct clock_event_device* ce; } ;


 int ENODEV ;
 int __clockevents_unbind ;
 int smp_call_function_single (int,int ,struct ce_unbind*,int) ;

__attribute__((used)) static int clockevents_unbind(struct clock_event_device *ced, int cpu)
{
 struct ce_unbind cu = { .ce = ced, .res = -ENODEV };

 smp_call_function_single(cpu, __clockevents_unbind, &cu, 1);
 return cu.res;
}
