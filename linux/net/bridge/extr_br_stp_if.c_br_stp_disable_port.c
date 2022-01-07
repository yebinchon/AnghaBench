
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int backup_port; int hold_timer; int forward_delay_timer; int message_age_timer; scalar_t__ config_pending; scalar_t__ topology_change_ack; struct net_bridge* br; } ;
struct net_bridge {int dummy; } ;


 int BR_STATE_DISABLED ;
 int RTM_NEWLINK ;
 int br_become_designated_port (struct net_bridge_port*) ;
 int br_become_root_bridge (struct net_bridge*) ;
 int br_configuration_update (struct net_bridge*) ;
 int br_fdb_delete_by_port (struct net_bridge*,struct net_bridge_port*,int ,int ) ;
 int br_ifinfo_notify (int ,int *,struct net_bridge_port*) ;
 int br_is_root_bridge (struct net_bridge*) ;
 int br_multicast_disable_port (struct net_bridge_port*) ;
 int br_port_state_selection (struct net_bridge*) ;
 int br_set_state (struct net_bridge_port*,int ) ;
 int del_timer (int *) ;
 int rcu_access_pointer (int ) ;

void br_stp_disable_port(struct net_bridge_port *p)
{
 struct net_bridge *br = p->br;
 int wasroot;

 wasroot = br_is_root_bridge(br);
 br_become_designated_port(p);
 br_set_state(p, BR_STATE_DISABLED);
 p->topology_change_ack = 0;
 p->config_pending = 0;

 br_ifinfo_notify(RTM_NEWLINK, ((void*)0), p);

 del_timer(&p->message_age_timer);
 del_timer(&p->forward_delay_timer);
 del_timer(&p->hold_timer);

 if (!rcu_access_pointer(p->backup_port))
  br_fdb_delete_by_port(br, p, 0, 0);
 br_multicast_disable_port(p);

 br_configuration_update(br);

 br_port_state_selection(br);

 if (br_is_root_bridge(br) && !wasroot)
  br_become_root_bridge(br);
}
