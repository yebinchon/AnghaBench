
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_phys_item_id {int dummy; } ;
struct net_bridge_port {int dev; int br; int offload_fwd_mark; } ;


 int ASSERT_RTNL () ;
 int EOPNOTSUPP ;
 int br_switchdev_mark_get (int ,int ) ;
 int dev_get_port_parent_id (int ,struct netdev_phys_item_id*,int) ;

int nbp_switchdev_mark_set(struct net_bridge_port *p)
{
 struct netdev_phys_item_id ppid = { };
 int err;

 ASSERT_RTNL();

 err = dev_get_port_parent_id(p->dev, &ppid, 1);
 if (err) {
  if (err == -EOPNOTSUPP)
   return 0;
  return err;
 }

 p->offload_fwd_mark = br_switchdev_mark_get(p->br, p->dev);

 return 0;
}
