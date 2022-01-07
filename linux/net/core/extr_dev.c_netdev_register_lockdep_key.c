
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_list_lock_key; int qdisc_xmit_lock_key; int qdisc_running_key; int qdisc_tx_busylock_key; } ;


 int lockdep_register_key (int *) ;

__attribute__((used)) static void netdev_register_lockdep_key(struct net_device *dev)
{
 lockdep_register_key(&dev->qdisc_tx_busylock_key);
 lockdep_register_key(&dev->qdisc_running_key);
 lockdep_register_key(&dev->qdisc_xmit_lock_key);
 lockdep_register_key(&dev->addr_list_lock_key);
}
