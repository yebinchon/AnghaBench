
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dn_ptr; } ;
struct dn_ifaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ forwarding; } ;
struct dn_dev {TYPE_1__ parms; } ;


 int dn_send_endnode_hello (struct net_device*,struct dn_ifaddr*) ;
 int dn_send_router_hello (struct net_device*,struct dn_ifaddr*) ;
 struct dn_dev* rcu_dereference_raw (int ) ;

__attribute__((used)) static void dn_send_brd_hello(struct net_device *dev, struct dn_ifaddr *ifa)
{
 struct dn_dev *dn_db = rcu_dereference_raw(dev->dn_ptr);

 if (dn_db->parms.forwarding == 0)
  dn_send_endnode_hello(dev, ifa);
 else
  dn_send_router_hello(dev, ifa);
}
