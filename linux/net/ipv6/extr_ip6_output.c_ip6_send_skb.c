
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int sk; } ;
struct rt6_info {int rt6i_idev; } ;
struct net {int dummy; } ;


 int IP6_INC_STATS (struct net*,int ,int ) ;
 int IPSTATS_MIB_OUTDISCARDS ;
 int ip6_local_out (struct net*,int ,struct sk_buff*) ;
 int net_xmit_errno (int) ;
 scalar_t__ skb_dst (struct sk_buff*) ;
 struct net* sock_net (int ) ;

int ip6_send_skb(struct sk_buff *skb)
{
 struct net *net = sock_net(skb->sk);
 struct rt6_info *rt = (struct rt6_info *)skb_dst(skb);
 int err;

 err = ip6_local_out(net, skb->sk, skb);
 if (err) {
  if (err > 0)
   err = net_xmit_errno(err);
  if (err)
   IP6_INC_STATS(net, rt->rt6i_idev,
          IPSTATS_MIB_OUTDISCARDS);
 }

 return err;
}
