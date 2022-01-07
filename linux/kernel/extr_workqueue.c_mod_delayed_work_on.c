
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct delayed_work {int work; } ;


 int EAGAIN ;
 int __queue_delayed_work (int,struct workqueue_struct*,struct delayed_work*,unsigned long) ;
 scalar_t__ likely (int) ;
 int local_irq_restore (unsigned long) ;
 int try_to_grab_pending (int *,int,unsigned long*) ;
 scalar_t__ unlikely (int) ;

bool mod_delayed_work_on(int cpu, struct workqueue_struct *wq,
    struct delayed_work *dwork, unsigned long delay)
{
 unsigned long flags;
 int ret;

 do {
  ret = try_to_grab_pending(&dwork->work, 1, &flags);
 } while (unlikely(ret == -EAGAIN));

 if (likely(ret >= 0)) {
  __queue_delayed_work(cpu, wq, dwork, delay);
  local_irq_restore(flags);
 }


 return ret;
}
