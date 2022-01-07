
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_irq_list {int list; int data; } ;
struct iucv_irq_data {scalar_t__ ippathid; int iptype; } ;
struct ext_code {int dummy; } ;


 int BUG_ON (int) ;
 int GFP_ATOMIC ;
 int IRQEXT_IUC ;
 int WARN_ON (int) ;
 int inc_irq_stat (int ) ;
 int iucv_error_no_listener ;
 struct iucv_irq_data** iucv_irq_data ;
 scalar_t__ iucv_max_pathid ;
 int iucv_queue_lock ;
 int iucv_sever_pathid (scalar_t__,int ) ;
 int iucv_task_queue ;
 int iucv_tasklet ;
 int iucv_work ;
 int iucv_work_queue ;
 struct iucv_irq_list* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memcpy (int *,struct iucv_irq_data*,int) ;
 int pr_warn (char*) ;
 int schedule_work (int *) ;
 size_t smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void iucv_external_interrupt(struct ext_code ext_code,
        unsigned int param32, unsigned long param64)
{
 struct iucv_irq_data *p;
 struct iucv_irq_list *work;

 inc_irq_stat(IRQEXT_IUC);
 p = iucv_irq_data[smp_processor_id()];
 if (p->ippathid >= iucv_max_pathid) {
  WARN_ON(p->ippathid >= iucv_max_pathid);
  iucv_sever_pathid(p->ippathid, iucv_error_no_listener);
  return;
 }
 BUG_ON(p->iptype < 0x01 || p->iptype > 0x09);
 work = kmalloc(sizeof(struct iucv_irq_list), GFP_ATOMIC);
 if (!work) {
  pr_warn("iucv_external_interrupt: out of memory\n");
  return;
 }
 memcpy(&work->data, p, sizeof(work->data));
 spin_lock(&iucv_queue_lock);
 if (p->iptype == 0x01) {

  list_add_tail(&work->list, &iucv_work_queue);
  schedule_work(&iucv_work);
 } else {

  list_add_tail(&work->list, &iucv_task_queue);
  tasklet_schedule(&iucv_tasklet);
 }
 spin_unlock(&iucv_queue_lock);
}
