
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;


 int ip6_datagram_recv_common_ctl (struct sock*,struct msghdr*,struct sk_buff*) ;
 int ip6_datagram_recv_specific_ctl (struct sock*,struct msghdr*,struct sk_buff*) ;

void ip6_datagram_recv_ctl(struct sock *sk, struct msghdr *msg,
     struct sk_buff *skb)
{
 ip6_datagram_recv_common_ctl(sk, msg, skb);
 ip6_datagram_recv_specific_ctl(sk, msg, skb);
}
