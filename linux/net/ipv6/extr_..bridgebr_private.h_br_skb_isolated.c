
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_bridge_port {int flags; } ;
struct TYPE_2__ {scalar_t__ src_port_isolated; } ;


 TYPE_1__* BR_INPUT_SKB_CB (struct sk_buff const*) ;
 int BR_ISOLATED ;

__attribute__((used)) static inline bool br_skb_isolated(const struct net_bridge_port *to,
       const struct sk_buff *skb)
{
 return BR_INPUT_SKB_CB(skb)->src_port_isolated &&
        (to->flags & BR_ISOLATED);
}
