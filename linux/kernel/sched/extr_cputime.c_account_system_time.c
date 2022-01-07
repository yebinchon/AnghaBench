
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int flags; } ;


 int CPUTIME_IRQ ;
 int CPUTIME_SOFTIRQ ;
 int CPUTIME_SYSTEM ;
 int PF_VCPU ;
 int account_guest_time (struct task_struct*,int ) ;
 int account_system_index_time (struct task_struct*,int ,int) ;
 int hardirq_count () ;
 scalar_t__ in_serving_softirq () ;
 int irq_count () ;

void account_system_time(struct task_struct *p, int hardirq_offset, u64 cputime)
{
 int index;

 if ((p->flags & PF_VCPU) && (irq_count() - hardirq_offset == 0)) {
  account_guest_time(p, cputime);
  return;
 }

 if (hardirq_count() - hardirq_offset)
  index = CPUTIME_IRQ;
 else if (in_serving_softirq())
  index = CPUTIME_SOFTIRQ;
 else
  index = CPUTIME_SYSTEM;

 account_system_index_time(p, cputime, index);
}
