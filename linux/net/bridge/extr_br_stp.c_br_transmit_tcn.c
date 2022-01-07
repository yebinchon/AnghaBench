
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int dummy; } ;
struct net_bridge {int root_port; } ;


 struct net_bridge_port* br_get_port (struct net_bridge*,int ) ;
 int br_notice (struct net_bridge*,char*,int ) ;
 int br_send_tcn_bpdu (struct net_bridge_port*) ;

void br_transmit_tcn(struct net_bridge *br)
{
 struct net_bridge_port *p;

 p = br_get_port(br, br->root_port);
 if (p)
  br_send_tcn_bpdu(p);
 else
  br_notice(br, "root port %u not found for topology notice\n",
     br->root_port);
}
