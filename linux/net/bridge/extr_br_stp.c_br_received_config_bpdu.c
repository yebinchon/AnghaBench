
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {scalar_t__ port_no; struct net_bridge* br; } ;
struct net_bridge {scalar_t__ root_port; scalar_t__ bridge_hello_time; int tcn_timer; int topology_change_timer; scalar_t__ topology_change_detected; int hello_timer; } ;
struct br_config_bpdu {scalar_t__ topology_change_ack; } ;


 int br_config_bpdu_generation (struct net_bridge*) ;
 int br_configuration_update (struct net_bridge*) ;
 scalar_t__ br_is_designated_port (struct net_bridge_port*) ;
 int br_is_root_bridge (struct net_bridge*) ;
 int br_port_state_selection (struct net_bridge*) ;
 int br_record_config_information (struct net_bridge_port*,struct br_config_bpdu const*) ;
 int br_record_config_timeout_values (struct net_bridge*,struct br_config_bpdu const*) ;
 int br_reply (struct net_bridge_port*) ;
 scalar_t__ br_supersedes_port_info (struct net_bridge_port*,struct br_config_bpdu const*) ;
 int br_topology_change_acknowledged (struct net_bridge*) ;
 int br_transmit_tcn (struct net_bridge*) ;
 int del_timer (int *) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

void br_received_config_bpdu(struct net_bridge_port *p,
        const struct br_config_bpdu *bpdu)
{
 struct net_bridge *br;
 int was_root;

 br = p->br;
 was_root = br_is_root_bridge(br);

 if (br_supersedes_port_info(p, bpdu)) {
  br_record_config_information(p, bpdu);
  br_configuration_update(br);
  br_port_state_selection(br);

  if (!br_is_root_bridge(br) && was_root) {
   del_timer(&br->hello_timer);
   if (br->topology_change_detected) {
    del_timer(&br->topology_change_timer);
    br_transmit_tcn(br);

    mod_timer(&br->tcn_timer,
       jiffies + br->bridge_hello_time);
   }
  }

  if (p->port_no == br->root_port) {
   br_record_config_timeout_values(br, bpdu);
   br_config_bpdu_generation(br);
   if (bpdu->topology_change_ack)
    br_topology_change_acknowledged(br);
  }
 } else if (br_is_designated_port(p)) {
  br_reply(p);
 }
}
