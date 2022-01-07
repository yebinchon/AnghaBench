
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dev; } ;
struct net_bridge_port {int flags; int br; } ;
struct TYPE_2__ {int h_source; } ;


 int BROPT_NO_LL_LEARN ;
 int BR_LEARNING ;
 int br_fdb_update (int ,struct net_bridge_port*,int ,int ,int) ;
 int br_opt_get (int ,int ) ;
 struct net_bridge_port* br_port_get_rcu (int ) ;
 scalar_t__ br_should_learn (struct net_bridge_port*,struct sk_buff*,int *) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;

__attribute__((used)) static void __br_handle_local_finish(struct sk_buff *skb)
{
 struct net_bridge_port *p = br_port_get_rcu(skb->dev);
 u16 vid = 0;


 if ((p->flags & BR_LEARNING) &&
     !br_opt_get(p->br, BROPT_NO_LL_LEARN) &&
     br_should_learn(p, skb, &vid))
  br_fdb_update(p->br, p, eth_hdr(skb)->h_source, vid, 0);
}
