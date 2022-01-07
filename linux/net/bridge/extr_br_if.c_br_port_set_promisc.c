
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int flags; int br; int dev; } ;


 int BR_PROMISC ;
 int br_fdb_unsync_static (int ,struct net_bridge_port*) ;
 scalar_t__ br_promisc_port (struct net_bridge_port*) ;
 int dev_set_promiscuity (int ,int) ;

__attribute__((used)) static void br_port_set_promisc(struct net_bridge_port *p)
{
 int err = 0;

 if (br_promisc_port(p))
  return;

 err = dev_set_promiscuity(p->dev, 1);
 if (err)
  return;

 br_fdb_unsync_static(p->br, p);
 p->flags |= BR_PROMISC;
}
