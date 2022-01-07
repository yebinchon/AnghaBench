
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue_struct {int flags; } ;
struct work_struct {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int WORK_STRUCT_PENDING_BIT ;
 int WQ_UNBOUND ;
 int __queue_work (int,struct workqueue_struct*,struct work_struct*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int test_and_set_bit (int ,int ) ;
 int work_data_bits (struct work_struct*) ;
 int workqueue_select_cpu_near (int) ;

bool queue_work_node(int node, struct workqueue_struct *wq,
       struct work_struct *work)
{
 unsigned long flags;
 bool ret = 0;
 WARN_ON_ONCE(!(wq->flags & WQ_UNBOUND));

 local_irq_save(flags);

 if (!test_and_set_bit(WORK_STRUCT_PENDING_BIT, work_data_bits(work))) {
  int cpu = workqueue_select_cpu_near(node);

  __queue_work(cpu, wq, work);
  ret = 1;
 }

 local_irq_restore(flags);
 return ret;
}
