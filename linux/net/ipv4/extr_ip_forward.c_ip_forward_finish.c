
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {scalar_t__ tstamp; scalar_t__ offload_l3_fwd_mark; int len; } ;
struct net {int dummy; } ;
struct ip_options {int optlen; } ;
struct TYPE_2__ {struct ip_options opt; } ;


 TYPE_1__* IPCB (struct sk_buff*) ;
 int IPSTATS_MIB_OUTFORWDATAGRAMS ;
 int IPSTATS_MIB_OUTOCTETS ;
 int __IP_ADD_STATS (struct net*,int ,int ) ;
 int __IP_INC_STATS (struct net*,int ) ;
 int consume_skb (struct sk_buff*) ;
 int dst_output (struct net*,struct sock*,struct sk_buff*) ;
 int ip_forward_options (struct sk_buff*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int ip_forward_finish(struct net *net, struct sock *sk, struct sk_buff *skb)
{
 struct ip_options *opt = &(IPCB(skb)->opt);

 __IP_INC_STATS(net, IPSTATS_MIB_OUTFORWDATAGRAMS);
 __IP_ADD_STATS(net, IPSTATS_MIB_OUTOCTETS, skb->len);
 if (unlikely(opt->optlen))
  ip_forward_options(skb);

 skb->tstamp = 0;
 return dst_output(net, sk, skb);
}
