
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * dn_ptr; } ;
struct TYPE_2__ {int (* down ) (struct net_device*) ;} ;
struct dn_dev {scalar_t__ peer; scalar_t__ router; int neigh_parms; TYPE_1__ parms; int timer; } ;


 int del_timer_sync (int *) ;
 int dn_dev_check_default (struct net_device*) ;
 int dn_dev_sysctl_unregister (TYPE_1__*) ;
 int dn_neigh_table ;
 int kfree (struct dn_dev*) ;
 int neigh_ifdown (int *,struct net_device*) ;
 int neigh_parms_release (int *,int ) ;
 int neigh_release (scalar_t__) ;
 struct dn_dev* rtnl_dereference (int *) ;
 int stub1 (struct net_device*) ;

__attribute__((used)) static void dn_dev_delete(struct net_device *dev)
{
 struct dn_dev *dn_db = rtnl_dereference(dev->dn_ptr);

 if (dn_db == ((void*)0))
  return;

 del_timer_sync(&dn_db->timer);
 dn_dev_sysctl_unregister(&dn_db->parms);
 dn_dev_check_default(dev);
 neigh_ifdown(&dn_neigh_table, dev);

 if (dn_db->parms.down)
  dn_db->parms.down(dev);

 dev->dn_ptr = ((void*)0);

 neigh_parms_release(&dn_neigh_table, dn_db->neigh_parms);
 neigh_ifdown(&dn_neigh_table, dev);

 if (dn_db->router)
  neigh_release(dn_db->router);
 if (dn_db->peer)
  neigh_release(dn_db->peer);

 kfree(dn_db);
}
