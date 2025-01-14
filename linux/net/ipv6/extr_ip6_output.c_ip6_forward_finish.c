
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {scalar_t__ tstamp; scalar_t__ offload_l3_fwd_mark; int len; } ;
struct net {int dummy; } ;
struct dst_entry {int dummy; } ;


 int IPSTATS_MIB_OUTFORWDATAGRAMS ;
 int IPSTATS_MIB_OUTOCTETS ;
 int __IP6_ADD_STATS (struct net*,int ,int ,int ) ;
 int __IP6_INC_STATS (struct net*,int ,int ) ;
 int consume_skb (struct sk_buff*) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int ip6_dst_idev (struct dst_entry*) ;
 struct dst_entry* skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline int ip6_forward_finish(struct net *net, struct sock *sk,
         struct sk_buff *skb)
{
 struct dst_entry *dst = skb_dst(skb);

 __IP6_INC_STATS(net, ip6_dst_idev(dst), IPSTATS_MIB_OUTFORWDATAGRAMS);
 __IP6_ADD_STATS(net, ip6_dst_idev(dst), IPSTATS_MIB_OUTOCTETS, skb->len);
 skb->tstamp = 0;
 return dst_output(net, sk, skb);
}
