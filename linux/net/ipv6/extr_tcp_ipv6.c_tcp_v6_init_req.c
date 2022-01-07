
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; } ;
struct sk_buff {int users; } ;
struct request_sock {int dummy; } ;
struct TYPE_8__ {scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_9__ {TYPE_2__ bits; } ;
struct ipv6_pinfo {scalar_t__ repflow; TYPE_3__ rxopt; } ;
struct inet_request_sock {struct sk_buff* pktopts; int ir_iif; int ir_v6_rmt_addr; int ir_v6_loc_addr; } ;
struct TYPE_10__ {int flags; } ;
struct TYPE_7__ {TYPE_4__ h6; } ;
struct TYPE_12__ {TYPE_1__ header; int tcp_tw_isn; } ;
struct TYPE_11__ {int daddr; int saddr; } ;


 int IPV6_ADDR_LINKLOCAL ;
 TYPE_6__* TCP_SKB_CB (struct sk_buff*) ;
 struct inet_request_sock* inet_rsk (struct request_sock*) ;
 int ipv6_addr_type (int *) ;
 TYPE_5__* ipv6_hdr (struct sk_buff*) ;
 int ipv6_l3mdev_skb (int ) ;
 scalar_t__ ipv6_opt_accepted (struct sock const*,struct sk_buff*,TYPE_4__*) ;
 int refcount_inc (int *) ;
 struct ipv6_pinfo* tcp_inet6_sk (struct sock const*) ;
 int tcp_v6_iif (struct sk_buff*) ;

__attribute__((used)) static void tcp_v6_init_req(struct request_sock *req,
       const struct sock *sk_listener,
       struct sk_buff *skb)
{
 bool l3_slave = ipv6_l3mdev_skb(TCP_SKB_CB(skb)->header.h6.flags);
 struct inet_request_sock *ireq = inet_rsk(req);
 const struct ipv6_pinfo *np = tcp_inet6_sk(sk_listener);

 ireq->ir_v6_rmt_addr = ipv6_hdr(skb)->saddr;
 ireq->ir_v6_loc_addr = ipv6_hdr(skb)->daddr;


 if ((!sk_listener->sk_bound_dev_if || l3_slave) &&
     ipv6_addr_type(&ireq->ir_v6_rmt_addr) & IPV6_ADDR_LINKLOCAL)
  ireq->ir_iif = tcp_v6_iif(skb);

 if (!TCP_SKB_CB(skb)->tcp_tw_isn &&
     (ipv6_opt_accepted(sk_listener, skb, &TCP_SKB_CB(skb)->header.h6) ||
      np->rxopt.bits.rxinfo ||
      np->rxopt.bits.rxoinfo || np->rxopt.bits.rxhlim ||
      np->rxopt.bits.rxohlim || np->repflow)) {
  refcount_inc(&skb->users);
  ireq->pktopts = skb;
 }
}
