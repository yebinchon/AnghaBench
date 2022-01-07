
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge_port {int flags; TYPE_1__* dev; int br; } ;
struct TYPE_2__ {int priv_flags; } ;


 int BR_PROMISC ;
 int IFF_UNICAST_FLT ;
 int br_fdb_sync_static (int ,struct net_bridge_port*) ;
 int br_promisc_port (struct net_bridge_port*) ;
 int dev_set_promiscuity (TYPE_1__*,int) ;

__attribute__((used)) static void br_port_clear_promisc(struct net_bridge_port *p)
{
 int err;






 if (!br_promisc_port(p) || !(p->dev->priv_flags & IFF_UNICAST_FLT))
  return;




 err = br_fdb_sync_static(p->br, p);
 if (err)
  return;

 dev_set_promiscuity(p->dev, -1);
 p->flags &= ~BR_PROMISC;
}
