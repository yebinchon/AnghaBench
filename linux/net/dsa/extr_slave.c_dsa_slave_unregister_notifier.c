
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int dsa_slave_nb ;
 struct notifier_block dsa_slave_switchdev_blocking_notifier ;
 int dsa_slave_switchdev_notifier ;
 int pr_err (char*,int) ;
 int unregister_netdevice_notifier (int *) ;
 int unregister_switchdev_blocking_notifier (struct notifier_block*) ;
 int unregister_switchdev_notifier (int *) ;

void dsa_slave_unregister_notifier(void)
{
 struct notifier_block *nb;
 int err;

 nb = &dsa_slave_switchdev_blocking_notifier;
 err = unregister_switchdev_blocking_notifier(nb);
 if (err)
  pr_err("DSA: failed to unregister switchdev blocking notifier (%d)\n", err);

 err = unregister_switchdev_notifier(&dsa_slave_switchdev_notifier);
 if (err)
  pr_err("DSA: failed to unregister switchdev notifier (%d)\n", err);

 err = unregister_netdevice_notifier(&dsa_slave_nb);
 if (err)
  pr_err("DSA: failed to unregister slave notifier (%d)\n", err);
}
