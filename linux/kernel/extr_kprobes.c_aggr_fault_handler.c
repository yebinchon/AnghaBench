
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;
struct kprobe {scalar_t__ (* fault_handler ) (struct kprobe*,struct pt_regs*,int) ;} ;


 struct kprobe* __this_cpu_read (int ) ;
 int kprobe_instance ;
 scalar_t__ stub1 (struct kprobe*,struct pt_regs*,int) ;

__attribute__((used)) static int aggr_fault_handler(struct kprobe *p, struct pt_regs *regs,
         int trapnr)
{
 struct kprobe *cur = __this_cpu_read(kprobe_instance);





 if (cur && cur->fault_handler) {
  if (cur->fault_handler(cur, regs, trapnr))
   return 1;
 }
 return 0;
}
