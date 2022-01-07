
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct rtable {scalar_t__ rt_iif; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct in_pktinfo {scalar_t__ ipi_ifindex; TYPE_1__ ipi_spec_dst; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int cmsg_flags; } ;


 TYPE_3__* IPCB (struct sk_buff*) ;
 int IP_CMSG_PKTINFO ;
 scalar_t__ LOOPBACK_IFINDEX ;
 struct in_pktinfo* PKTINFO_SKB_CB (struct sk_buff*) ;
 scalar_t__ fib_compute_spec_dst (struct sk_buff*) ;
 scalar_t__ inet_iif (struct sk_buff*) ;
 TYPE_2__* inet_sk (struct sock const*) ;
 int ipv4_l3mdev_skb (int ) ;
 scalar_t__ ipv6_sk_rxinfo (struct sock const*) ;
 int skb_dst_drop (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;

void ipv4_pktinfo_prepare(const struct sock *sk, struct sk_buff *skb)
{
 struct in_pktinfo *pktinfo = PKTINFO_SKB_CB(skb);
 bool prepare = (inet_sk(sk)->cmsg_flags & IP_CMSG_PKTINFO) ||
         ipv6_sk_rxinfo(sk);

 if (prepare && skb_rtable(skb)) {
  struct rtable *rt = skb_rtable(skb);
  bool l3slave = ipv4_l3mdev_skb(IPCB(skb)->flags);

  if (pktinfo->ipi_ifindex == LOOPBACK_IFINDEX)
   pktinfo->ipi_ifindex = inet_iif(skb);
  else if (l3slave && rt && rt->rt_iif)
   pktinfo->ipi_ifindex = rt->rt_iif;

  pktinfo->ipi_spec_dst.s_addr = fib_compute_spec_dst(skb);
 } else {
  pktinfo->ipi_ifindex = 0;
  pktinfo->ipi_spec_dst.s_addr = 0;
 }
 skb_dst_drop(skb);
}
