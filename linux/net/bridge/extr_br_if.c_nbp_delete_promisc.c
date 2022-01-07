
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_bridge_port {int br; int dev; } ;


 int br_fdb_unsync_static (int ,struct net_bridge_port*) ;
 scalar_t__ br_promisc_port (struct net_bridge_port*) ;
 int dev_set_allmulti (int ,int) ;
 int dev_set_promiscuity (int ,int) ;

__attribute__((used)) static void nbp_delete_promisc(struct net_bridge_port *p)
{




 dev_set_allmulti(p->dev, -1);
 if (br_promisc_port(p))
  dev_set_promiscuity(p->dev, -1);
 else
  br_fdb_unsync_static(p->br, p);
}
