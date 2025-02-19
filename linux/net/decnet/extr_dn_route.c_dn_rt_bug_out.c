
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct dn_skb_cb {int dst; int src; } ;


 struct dn_skb_cb* DN_SKB_CB (struct sk_buff*) ;
 int NET_RX_DROP ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int net_dbg_ratelimited (char*,int ,int ) ;

__attribute__((used)) static int dn_rt_bug_out(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct dn_skb_cb *cb = DN_SKB_CB(skb);

 net_dbg_ratelimited("dn_rt_bug: skb from:%04x to:%04x\n",
       le16_to_cpu(cb->src), le16_to_cpu(cb->dst));

 kfree_skb(skb);

 return NET_RX_DROP;
}
