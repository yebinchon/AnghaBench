
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sock {scalar_t__ sk_bound_dev_if; } ;
struct sk_buff {struct net_device* dev; } ;
struct net_device {scalar_t__ ifindex; } ;
struct TYPE_5__ {int ra_chain; } ;
struct net {TYPE_1__ ipv4; } ;
struct ip_ra_chain {struct sock* sk; int next; } ;
struct TYPE_7__ {scalar_t__ inet_num; } ;
struct TYPE_6__ {scalar_t__ protocol; } ;


 int GFP_ATOMIC ;
 int IP_DEFRAG_CALL_RA_CHAIN ;
 struct net* dev_net (struct net_device*) ;
 TYPE_4__* inet_sk (struct sock*) ;
 scalar_t__ ip_defrag (struct net*,struct sk_buff*,int ) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 scalar_t__ ip_is_fragment (TYPE_2__*) ;
 int raw_rcv (struct sock*,struct sk_buff*) ;
 struct ip_ra_chain* rcu_dereference (int ) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;

bool ip_call_ra_chain(struct sk_buff *skb)
{
 struct ip_ra_chain *ra;
 u8 protocol = ip_hdr(skb)->protocol;
 struct sock *last = ((void*)0);
 struct net_device *dev = skb->dev;
 struct net *net = dev_net(dev);

 for (ra = rcu_dereference(net->ipv4.ra_chain); ra; ra = rcu_dereference(ra->next)) {
  struct sock *sk = ra->sk;




  if (sk && inet_sk(sk)->inet_num == protocol &&
      (!sk->sk_bound_dev_if ||
       sk->sk_bound_dev_if == dev->ifindex)) {
   if (ip_is_fragment(ip_hdr(skb))) {
    if (ip_defrag(net, skb, IP_DEFRAG_CALL_RA_CHAIN))
     return 1;
   }
   if (last) {
    struct sk_buff *skb2 = skb_clone(skb, GFP_ATOMIC);
    if (skb2)
     raw_rcv(last, skb2);
   }
   last = sk;
  }
 }

 if (last) {
  raw_rcv(last, skb);
  return 1;
 }
 return 0;
}
