
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int dsa_slave_nb ;
 struct notifier_block dsa_slave_switchdev_blocking_notifier ;
 int dsa_slave_switchdev_notifier ;
 int register_netdevice_notifier (int *) ;
 int register_switchdev_blocking_notifier (struct notifier_block*) ;
 int register_switchdev_notifier (int *) ;
 int unregister_netdevice_notifier (int *) ;
 int unregister_switchdev_notifier (int *) ;

int dsa_slave_register_notifier(void)
{
 struct notifier_block *nb;
 int err;

 err = register_netdevice_notifier(&dsa_slave_nb);
 if (err)
  return err;

 err = register_switchdev_notifier(&dsa_slave_switchdev_notifier);
 if (err)
  goto err_switchdev_nb;

 nb = &dsa_slave_switchdev_blocking_notifier;
 err = register_switchdev_blocking_notifier(nb);
 if (err)
  goto err_switchdev_blocking_nb;

 return 0;

err_switchdev_blocking_nb:
 unregister_switchdev_notifier(&dsa_slave_switchdev_notifier);
err_switchdev_nb:
 unregister_netdevice_notifier(&dsa_slave_nb);
 return err;
}
