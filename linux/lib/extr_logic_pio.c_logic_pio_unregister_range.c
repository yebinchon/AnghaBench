
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logic_pio_hwaddr {int list; } ;


 int io_range_mutex ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void logic_pio_unregister_range(struct logic_pio_hwaddr *range)
{
 mutex_lock(&io_range_mutex);
 list_del_rcu(&range->list);
 mutex_unlock(&io_range_mutex);
 synchronize_rcu();
}
