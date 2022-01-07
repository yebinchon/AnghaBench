
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iucv_handler {int list; int paths; } ;


 int ENOSYS ;
 int INIT_LIST_HEAD (int *) ;
 int iucv_available ;
 int iucv_enable () ;
 int iucv_handler_list ;
 int iucv_nonsmp_handler ;
 int iucv_register_mutex ;
 int iucv_setmask_up () ;
 int iucv_table_lock ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iucv_register(struct iucv_handler *handler, int smp)
{
 int rc;

 if (!iucv_available)
  return -ENOSYS;
 mutex_lock(&iucv_register_mutex);
 if (!smp)
  iucv_nonsmp_handler++;
 if (list_empty(&iucv_handler_list)) {
  rc = iucv_enable();
  if (rc)
   goto out_mutex;
 } else if (!smp && iucv_nonsmp_handler == 1)
  iucv_setmask_up();
 INIT_LIST_HEAD(&handler->paths);

 spin_lock_bh(&iucv_table_lock);
 list_add_tail(&handler->list, &iucv_handler_list);
 spin_unlock_bh(&iucv_table_lock);
 rc = 0;
out_mutex:
 mutex_unlock(&iucv_register_mutex);
 return rc;
}
