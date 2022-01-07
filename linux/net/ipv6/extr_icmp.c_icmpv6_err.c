
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {TYPE_1__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
struct icmp6hdr {scalar_t__ icmp6_type; } ;
typedef int __be32 ;
struct TYPE_2__ {int ifindex; } ;


 scalar_t__ ICMPV6_ECHO_REQUEST ;
 int ICMPV6_INFOMSG_MASK ;
 int ICMPV6_PKT_TOOBIG ;
 int NDISC_REDIRECT ;
 struct net* dev_net (TYPE_1__*) ;
 int ip6_redirect (struct sk_buff*,struct net*,int ,int ,int ) ;
 int ip6_update_pmtu (struct sk_buff*,struct net*,int ,int ,int ,int ) ;
 int ntohl (int ) ;
 int ping_err (struct sk_buff*,int,int ) ;
 int sock_net_uid (struct net*,int *) ;

__attribute__((used)) static int icmpv6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
         u8 type, u8 code, int offset, __be32 info)
{

 struct icmp6hdr *icmp6 = (struct icmp6hdr *) (skb->data + offset);
 struct net *net = dev_net(skb->dev);

 if (type == ICMPV6_PKT_TOOBIG)
  ip6_update_pmtu(skb, net, info, skb->dev->ifindex, 0, sock_net_uid(net, ((void*)0)));
 else if (type == NDISC_REDIRECT)
  ip6_redirect(skb, net, skb->dev->ifindex, 0,
        sock_net_uid(net, ((void*)0)));

 if (!(type & ICMPV6_INFOMSG_MASK))
  if (icmp6->icmp6_type == ICMPV6_ECHO_REQUEST)
   ping_err(skb, offset, ntohl(info));

 return 0;
}
