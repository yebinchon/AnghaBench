
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int br; } ;


 int BROPT_VLAN_BRIDGE_BINDING ;



 int br_opt_get (int ,int ) ;
 int br_vlan_set_all_vlan_dev_state (struct net_bridge_port*) ;

void br_vlan_port_event(struct net_bridge_port *p, unsigned long event)
{
 if (!br_opt_get(p->br, BROPT_VLAN_BRIDGE_BINDING))
  return;

 switch (event) {
 case 130:
 case 129:
 case 128:
  br_vlan_set_all_vlan_dev_state(p);
  break;
 }
}
