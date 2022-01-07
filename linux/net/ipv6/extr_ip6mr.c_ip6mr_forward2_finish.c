
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct net {int dummy; } ;


 int IP6_ADD_STATS (struct net*,int ,int ,int ) ;
 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IPSTATS_MIB_OUTFORWDATAGRAMS ;
 int IPSTATS_MIB_OUTOCTETS ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int ip6_dst_idev (int ) ;
 int skb_dst (struct sk_buff*) ;

__attribute__((used)) static inline int ip6mr_forward2_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 IP6_INC_STATS(net, ip6_dst_idev(skb_dst(skb)),
        IPSTATS_MIB_OUTFORWDATAGRAMS);
 IP6_ADD_STATS(net, ip6_dst_idev(skb_dst(skb)),
        IPSTATS_MIB_OUTOCTETS, skb->len);
 return dst_output(net, sk, skb);
}
