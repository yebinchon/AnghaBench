
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct sock {int sk_state; } ;
struct sk_buff {scalar_t__ protocol; int len; } ;
struct TYPE_8__ {scalar_t__ rxtclass; scalar_t__ rxflow; scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_9__ {TYPE_1__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {int pktoptions; int flow_label; scalar_t__ repflow; int rcv_flowinfo; TYPE_2__ rxopt; int mcast_hops; int mcast_oif; } ;
struct inet6_skb_parm {int dummy; } ;
struct TYPE_10__ {int h6; } ;
struct TYPE_12__ {TYPE_3__ header; } ;
struct TYPE_11__ {int hop_limit; } ;


 int DCCPF_CLOSED ;
 int DCCPF_LISTEN ;
 int DCCP_OPEN ;
 TYPE_7__* DCCP_SKB_CB (struct sk_buff*) ;
 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int IP6CB (struct sk_buff*) ;
 int __kfree_skb (struct sk_buff*) ;
 int dccp_hdr (struct sk_buff*) ;
 scalar_t__ dccp_rcv_established (struct sock*,struct sk_buff*,int ,int ) ;
 scalar_t__ dccp_rcv_state_process (struct sock*,struct sk_buff*,int ,int ) ;
 int dccp_v4_do_rcv (struct sock*,struct sk_buff*) ;
 int dccp_v6_ctl_send_reset (struct sock*,struct sk_buff*) ;
 scalar_t__ htons (int ) ;
 int inet6_iif (struct sk_buff*) ;
 struct ipv6_pinfo* inet6_sk (struct sock*) ;
 int ip6_flowinfo (TYPE_4__*) ;
 int ip6_flowlabel (TYPE_4__*) ;
 TYPE_4__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_opt_accepted (struct sock*,struct sk_buff*,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int memmove (int ,int *,int) ;
 scalar_t__ sk_filter (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 struct sk_buff* xchg (int *,struct sk_buff*) ;

__attribute__((used)) static int dccp_v6_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct ipv6_pinfo *np = inet6_sk(sk);
 struct sk_buff *opt_skb = ((void*)0);
 if (skb->protocol == htons(ETH_P_IP))
  return dccp_v4_do_rcv(sk, skb);

 if (sk_filter(sk, skb))
  goto discard;
 if (np->rxopt.all)
  opt_skb = skb_clone(skb, GFP_ATOMIC);

 if (sk->sk_state == DCCP_OPEN) {
  if (dccp_rcv_established(sk, skb, dccp_hdr(skb), skb->len))
   goto reset;
  if (opt_skb)
   goto ipv6_pktoptions;
  return 0;
 }
 if (dccp_rcv_state_process(sk, skb, dccp_hdr(skb), skb->len))
  goto reset;
 if (opt_skb)
  goto ipv6_pktoptions;
 return 0;

reset:
 dccp_v6_ctl_send_reset(sk, skb);
discard:
 if (opt_skb != ((void*)0))
  __kfree_skb(opt_skb);
 kfree_skb(skb);
 return 0;




ipv6_pktoptions:
 if (!((1 << sk->sk_state) & (DCCPF_CLOSED | DCCPF_LISTEN))) {
  if (np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo)
   np->mcast_oif = inet6_iif(opt_skb);
  if (np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim)
   np->mcast_hops = ipv6_hdr(opt_skb)->hop_limit;
  if (np->rxopt.bits.rxflow || np->rxopt.bits.rxtclass)
   np->rcv_flowinfo = ip6_flowinfo(ipv6_hdr(opt_skb));
  if (np->repflow)
   np->flow_label = ip6_flowlabel(ipv6_hdr(opt_skb));
  if (ipv6_opt_accepted(sk, opt_skb,
          &DCCP_SKB_CB(opt_skb)->header.h6)) {
   skb_set_owner_r(opt_skb, sk);
   memmove(IP6CB(opt_skb),
    &DCCP_SKB_CB(opt_skb)->header.h6,
    sizeof(struct inet6_skb_parm));
   opt_skb = xchg(&np->pktoptions, opt_skb);
  } else {
   __kfree_skb(opt_skb);
   opt_skb = xchg(&np->pktoptions, ((void*)0));
  }
 }

 kfree_skb(opt_skb);
 return 0;
}
