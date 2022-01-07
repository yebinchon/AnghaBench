
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mrouter; } ;
struct switchdev_attr {TYPE_1__ u; int flags; int id; int orig_dev; } ;
struct net_bridge_port {int dev; } ;


 int SWITCHDEV_ATTR_ID_PORT_MROUTER ;
 int SWITCHDEV_F_DEFER ;
 int switchdev_port_attr_set (int ,struct switchdev_attr*) ;

__attribute__((used)) static void br_port_mc_router_state_change(struct net_bridge_port *p,
        bool is_mc_router)
{
 struct switchdev_attr attr = {
  .orig_dev = p->dev,
  .id = SWITCHDEV_ATTR_ID_PORT_MROUTER,
  .flags = SWITCHDEV_F_DEFER,
  .u.mrouter = is_mc_router,
 };

 switchdev_port_attr_set(p->dev, &attr);
}
