
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {int forward_delay_timer; TYPE_1__* dev; scalar_t__ port_no; } ;
struct net_bridge {scalar_t__ forward_delay; } ;
struct TYPE_2__ {int name; } ;


 int BR_STATE_LISTENING ;
 int RTM_NEWLINK ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 int br_notice (struct net_bridge const*,char*,unsigned int,int ) ;
 int br_set_state (struct net_bridge_port*,int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static void br_root_port_block(const struct net_bridge *br,
          struct net_bridge_port *p)
{

 br_notice(br, "port %u(%s) tried to become root port (blocked)",
    (unsigned int) p->port_no, p->dev->name);

 br_set_state(p, BR_STATE_LISTENING);
 br_ifinfo_notify(RTM_NEWLINK, ((void*)0), p);

 if (br->forward_delay > 0)
  mod_timer(&p->forward_delay_timer, jiffies + br->forward_delay);
}
