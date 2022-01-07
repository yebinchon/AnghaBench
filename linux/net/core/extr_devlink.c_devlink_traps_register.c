
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlink_trap {int dummy; } ;
struct devlink {int lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int trap_action_set; int trap_init; } ;


 int EINVAL ;
 int devlink_trap_register (struct devlink*,struct devlink_trap const*,void*) ;
 int devlink_trap_unregister (struct devlink*,struct devlink_trap const*) ;
 int devlink_trap_verify (struct devlink_trap const*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devlink_traps_register(struct devlink *devlink,
      const struct devlink_trap *traps,
      size_t traps_count, void *priv)
{
 int i, err;

 if (!devlink->ops->trap_init || !devlink->ops->trap_action_set)
  return -EINVAL;

 mutex_lock(&devlink->lock);
 for (i = 0; i < traps_count; i++) {
  const struct devlink_trap *trap = &traps[i];

  err = devlink_trap_verify(trap);
  if (err)
   goto err_trap_verify;

  err = devlink_trap_register(devlink, trap, priv);
  if (err)
   goto err_trap_register;
 }
 mutex_unlock(&devlink->lock);

 return 0;

err_trap_register:
err_trap_verify:
 for (i--; i >= 0; i--)
  devlink_trap_unregister(devlink, &traps[i]);
 mutex_unlock(&devlink->lock);
 return err;
}
