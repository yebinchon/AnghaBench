
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dn_ptr; } ;
struct TYPE_2__ {scalar_t__ forwarding; } ;
struct dn_dev {TYPE_1__ parms; } ;


 int dev_mc_del (struct net_device*,int ) ;
 int dn_rt_all_end_mcast ;
 int dn_rt_all_rt_mcast ;
 struct dn_dev* rcu_dereference_raw (int ) ;

__attribute__((used)) static void dn_eth_down(struct net_device *dev)
{
 struct dn_dev *dn_db = rcu_dereference_raw(dev->dn_ptr);

 if (dn_db->parms.forwarding == 0)
  dev_mc_del(dev, dn_rt_all_end_mcast);
 else
  dev_mc_del(dev, dn_rt_all_rt_mcast);
}
