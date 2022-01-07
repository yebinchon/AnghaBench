
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int dummy; } ;
struct work_struct {int dummy; } ;
struct delayed_work {struct work_struct work; } ;


 int WORK_STRUCT_PENDING_BIT ;
 int __queue_delayed_work (int,struct workqueue_struct*,struct delayed_work*,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int test_and_set_bit (int ,int ) ;
 int work_data_bits (struct work_struct*) ;

bool queue_delayed_work_on(int cpu, struct workqueue_struct *wq,
      struct delayed_work *dwork, unsigned long delay)
{
 struct work_struct *work = &dwork->work;
 bool ret = 0;
 unsigned long flags;


 local_irq_save(flags);

 if (!test_and_set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(work))) {
  __queue_delayed_work(cpu, wq, dwork, delay);
  ret = 1;
 }

 local_irq_restore(flags);
 return ret;
}
