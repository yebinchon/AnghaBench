
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct css_task_iter {scalar_t__ cur_task; scalar_t__ cur_dcset; scalar_t__ cur_cset; int iters_node; } ;


 int css_set_lock ;
 int list_del (int *) ;
 int put_css_set (scalar_t__) ;
 int put_css_set_locked (scalar_t__) ;
 int put_task_struct (scalar_t__) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void css_task_iter_end(struct css_task_iter *it)
{
 if (it->cur_cset) {
  spin_lock_irq(&css_set_lock);
  list_del(&it->iters_node);
  put_css_set_locked(it->cur_cset);
  spin_unlock_irq(&css_set_lock);
 }

 if (it->cur_dcset)
  put_css_set(it->cur_dcset);

 if (it->cur_task)
  put_task_struct(it->cur_task);
}
