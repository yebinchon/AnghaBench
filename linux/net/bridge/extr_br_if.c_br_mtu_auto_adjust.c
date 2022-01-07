
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge {int dev; } ;


 int ASSERT_RTNL () ;
 int BROPT_MTU_SET_BY_USER ;
 int br_mtu_min (struct net_bridge*) ;
 scalar_t__ br_opt_get (struct net_bridge*,int ) ;
 int br_opt_toggle (struct net_bridge*,int ,int) ;
 int dev_set_mtu (int ,int ) ;

void br_mtu_auto_adjust(struct net_bridge *br)
{
 ASSERT_RTNL();


 if (br_opt_get(br, BROPT_MTU_SET_BY_USER))
  return;




 dev_set_mtu(br->dev, br_mtu_min(br));
 br_opt_toggle(br, BROPT_MTU_SET_BY_USER, 0);
}
