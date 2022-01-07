
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devlink_trap {int dummy; } ;
struct devlink {int lock; } ;


 int devlink_trap_disable (struct devlink*,struct devlink_trap const*) ;
 int devlink_trap_unregister (struct devlink*,struct devlink_trap const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int synchronize_rcu () ;

void devlink_traps_unregister(struct devlink *devlink,
         const struct devlink_trap *traps,
         size_t traps_count)
{
 int i;

 mutex_lock(&devlink->lock);



 for (i = traps_count - 1; i >= 0; i--)
  devlink_trap_disable(devlink, &traps[i]);
 synchronize_rcu();
 for (i = traps_count - 1; i >= 0; i--)
  devlink_trap_unregister(devlink, &traps[i]);
 mutex_unlock(&devlink->lock);
}
