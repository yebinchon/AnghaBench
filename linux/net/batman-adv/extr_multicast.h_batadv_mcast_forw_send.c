
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;


 int NET_XMIT_DROP ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static inline int
batadv_mcast_forw_send(struct batadv_priv *bat_priv, struct sk_buff *skb,
         unsigned short vid)
{
 kfree_skb(skb);
 return NET_XMIT_DROP;
}
