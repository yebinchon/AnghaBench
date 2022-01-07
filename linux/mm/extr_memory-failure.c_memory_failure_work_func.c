
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct memory_failure_entry {int flags; int pfn; int member_0; } ;
struct memory_failure_cpu {int lock; int fifo; } ;


 int MF_SOFT_OFFLINE ;
 int kfifo_get (int *,struct memory_failure_entry*) ;
 int memory_failure (int ,int) ;
 int memory_failure_cpu ;
 int pfn_to_page (int ) ;
 int soft_offline_page (int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct memory_failure_cpu* this_cpu_ptr (int *) ;

__attribute__((used)) static void memory_failure_work_func(struct work_struct *work)
{
 struct memory_failure_cpu *mf_cpu;
 struct memory_failure_entry entry = { 0, };
 unsigned long proc_flags;
 int gotten;

 mf_cpu = this_cpu_ptr(&memory_failure_cpu);
 for (;;) {
  spin_lock_irqsave(&mf_cpu->lock, proc_flags);
  gotten = kfifo_get(&mf_cpu->fifo, &entry);
  spin_unlock_irqrestore(&mf_cpu->lock, proc_flags);
  if (!gotten)
   break;
  if (entry.flags & MF_SOFT_OFFLINE)
   soft_offline_page(pfn_to_page(entry.pfn), entry.flags);
  else
   memory_failure(entry.pfn, entry.flags);
 }
}
