
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int stp_state; } ;
struct switchdev_attr {TYPE_1__ u; int flags; int id; TYPE_2__* orig_dev; } ;
struct net_bridge_port {unsigned int state; TYPE_2__* dev; scalar_t__ port_no; int br; } ;
struct TYPE_4__ {int name; } ;


 int EOPNOTSUPP ;
 int SWITCHDEV_ATTR_ID_PORT_STP_STATE ;
 int SWITCHDEV_F_DEFER ;
 int br_info (int ,char*,unsigned int,int ,int ) ;
 int * br_port_state_names ;
 int br_warn (int ,char*,unsigned int,int ) ;
 int switchdev_port_attr_set (TYPE_2__*,struct switchdev_attr*) ;

void br_set_state(struct net_bridge_port *p, unsigned int state)
{
 struct switchdev_attr attr = {
  .orig_dev = p->dev,
  .id = SWITCHDEV_ATTR_ID_PORT_STP_STATE,
  .flags = SWITCHDEV_F_DEFER,
  .u.stp_state = state,
 };
 int err;

 p->state = state;
 err = switchdev_port_attr_set(p->dev, &attr);
 if (err && err != -EOPNOTSUPP)
  br_warn(p->br, "error setting offload STP state on port %u(%s)\n",
    (unsigned int) p->port_no, p->dev->name);
 else
  br_info(p->br, "port %u(%s) entered %s state\n",
    (unsigned int) p->port_no, p->dev->name,
    br_port_state_names[p->state]);
}
