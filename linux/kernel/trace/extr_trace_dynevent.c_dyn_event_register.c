
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dyn_event_operations {int list; int match; int free; int is_busy; int show; int create; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 int dyn_event_ops_list ;
 int dyn_event_ops_mutex ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int dyn_event_register(struct dyn_event_operations *ops)
{
 if (!ops || !ops->create || !ops->show || !ops->is_busy ||
     !ops->free || !ops->match)
  return -EINVAL;

 INIT_LIST_HEAD(&ops->list);
 mutex_lock(&dyn_event_ops_mutex);
 list_add_tail(&ops->list, &dyn_event_ops_list);
 mutex_unlock(&dyn_event_ops_mutex);
 return 0;
}
