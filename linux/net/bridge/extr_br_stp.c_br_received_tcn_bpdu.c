
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {int br; TYPE_1__* dev; scalar_t__ port_no; } ;
struct TYPE_2__ {int name; } ;


 int br_info (int ,char*,unsigned int,int ) ;
 scalar_t__ br_is_designated_port (struct net_bridge_port*) ;
 int br_topology_change_acknowledge (struct net_bridge_port*) ;
 int br_topology_change_detection (int ) ;

void br_received_tcn_bpdu(struct net_bridge_port *p)
{
 if (br_is_designated_port(p)) {
  br_info(p->br, "port %u(%s) received tcn bpdu\n",
   (unsigned int) p->port_no, p->dev->name);

  br_topology_change_detection(p->br);
  br_topology_change_acknowledge(p);
 }
}
