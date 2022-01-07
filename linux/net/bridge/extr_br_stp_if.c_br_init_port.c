
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {int dev; TYPE_1__* br; scalar_t__ config_pending; scalar_t__ topology_change_ack; int port_no; int priority; int port_id; } ;
struct TYPE_2__ {int ageing_time; } ;


 int BR_STATE_BLOCKING ;
 int __set_ageing_time (int ,int ) ;
 int br_become_designated_port (struct net_bridge_port*) ;
 int br_make_port_id (int ,int ) ;
 int br_set_state (struct net_bridge_port*,int ) ;
 int netdev_err (int ,char*) ;

void br_init_port(struct net_bridge_port *p)
{
 int err;

 p->port_id = br_make_port_id(p->priority, p->port_no);
 br_become_designated_port(p);
 br_set_state(p, BR_STATE_BLOCKING);
 p->topology_change_ack = 0;
 p->config_pending = 0;

 err = __set_ageing_time(p->dev, p->br->ageing_time);
 if (err)
  netdev_err(p->dev, "failed to offload ageing time\n");
}
