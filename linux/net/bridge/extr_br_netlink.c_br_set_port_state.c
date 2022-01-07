
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct net_bridge_port {TYPE_1__* br; int dev; } ;
struct TYPE_2__ {scalar_t__ stp_enabled; } ;


 scalar_t__ BR_KERNEL_STP ;
 scalar_t__ BR_STATE_BLOCKING ;
 scalar_t__ BR_STATE_DISABLED ;
 int EBUSY ;
 int EINVAL ;
 int ENETDOWN ;
 int br_port_state_selection (TYPE_1__*) ;
 int br_set_state (struct net_bridge_port*,scalar_t__) ;
 int netif_oper_up (int ) ;
 int netif_running (int ) ;

__attribute__((used)) static int br_set_port_state(struct net_bridge_port *p, u8 state)
{
 if (state > BR_STATE_BLOCKING)
  return -EINVAL;


 if (p->br->stp_enabled == BR_KERNEL_STP)
  return -EBUSY;




 if (!netif_running(p->dev) ||
     (!netif_oper_up(p->dev) && state != BR_STATE_DISABLED))
  return -ENETDOWN;

 br_set_state(p, state);
 br_port_state_selection(p->br);
 return 0;
}
