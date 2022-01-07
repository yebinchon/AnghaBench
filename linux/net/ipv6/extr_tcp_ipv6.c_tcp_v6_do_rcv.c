
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct tcp_sock {scalar_t__ rcv_nxt; } ;
struct sock {int sk_state; struct dst_entry* sk_rx_dst; } ;
struct sk_buff {scalar_t__ protocol; scalar_t__ skb_iif; } ;
struct TYPE_11__ {scalar_t__ rxtclass; scalar_t__ rxflow; scalar_t__ rxohlim; scalar_t__ rxhlim; scalar_t__ rxoinfo; scalar_t__ rxinfo; } ;
struct TYPE_12__ {TYPE_2__ bits; scalar_t__ all; } ;
struct ipv6_pinfo {int pktoptions; int flow_label; scalar_t__ repflow; int rcv_flowinfo; TYPE_3__ rxopt; int mcast_hops; int mcast_oif; int rx_dst_cookie; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_13__ {int h6; } ;
struct TYPE_16__ {scalar_t__ end_seq; TYPE_4__ header; } ;
struct TYPE_15__ {scalar_t__ rx_dst_ifindex; } ;
struct TYPE_14__ {int hop_limit; } ;
struct TYPE_10__ {int * (* check ) (struct dst_entry*,int ) ;} ;


 int ETH_P_IP ;
 int GFP_ATOMIC ;
 int TCPF_CLOSE ;
 int TCPF_LISTEN ;
 int TCP_ESTABLISHED ;
 int TCP_INC_STATS (int ,int ) ;
 int TCP_LISTEN ;
 int TCP_MIB_CSUMERRORS ;
 int TCP_MIB_INERRS ;
 TYPE_9__* TCP_SKB_CB (struct sk_buff*) ;
 int __kfree_skb (struct sk_buff*) ;
 int dst_release (struct dst_entry*) ;
 scalar_t__ htons (int ) ;
 TYPE_8__* inet_sk (struct sock*) ;
 int ip6_flowinfo (TYPE_5__*) ;
 int ip6_flowlabel (TYPE_5__*) ;
 TYPE_5__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ipv6_opt_accepted (struct sock*,struct sk_buff*,int *) ;
 int kfree_skb (struct sk_buff*) ;
 int sk_gfp_mask (struct sock*,int ) ;
 int sk_mark_napi_id (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_clone (struct sk_buff*,int ) ;
 int skb_set_owner_r (struct sk_buff*,struct sock*) ;
 int sock_net (struct sock*) ;
 int sock_rps_save_rxhash (struct sock*,struct sk_buff*) ;
 int * stub1 (struct dst_entry*,int ) ;
 scalar_t__ tcp_checksum_complete (struct sk_buff*) ;
 scalar_t__ tcp_child_process (struct sock*,struct sock*,struct sk_buff*) ;
 struct ipv6_pinfo* tcp_inet6_sk (struct sock*) ;
 int tcp_rcv_established (struct sock*,struct sk_buff*) ;
 scalar_t__ tcp_rcv_state_process (struct sock*,struct sk_buff*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_v4_do_rcv (struct sock*,struct sk_buff*) ;
 struct sock* tcp_v6_cookie_check (struct sock*,struct sk_buff*) ;
 int tcp_v6_iif (struct sk_buff*) ;
 int tcp_v6_restore_cb (struct sk_buff*) ;
 int tcp_v6_send_reset (struct sock*,struct sk_buff*) ;
 struct sk_buff* xchg (int *,struct sk_buff*) ;

__attribute__((used)) static int tcp_v6_do_rcv(struct sock *sk, struct sk_buff *skb)
{
 struct ipv6_pinfo *np = tcp_inet6_sk(sk);
 struct sk_buff *opt_skb = ((void*)0);
 struct tcp_sock *tp;
 if (skb->protocol == htons(ETH_P_IP))
  return tcp_v4_do_rcv(sk, skb);
 if (np->rxopt.all)
  opt_skb = skb_clone(skb, sk_gfp_mask(sk, GFP_ATOMIC));

 if (sk->sk_state == TCP_ESTABLISHED) {
  struct dst_entry *dst = sk->sk_rx_dst;

  sock_rps_save_rxhash(sk, skb);
  sk_mark_napi_id(sk, skb);
  if (dst) {
   if (inet_sk(sk)->rx_dst_ifindex != skb->skb_iif ||
       dst->ops->check(dst, np->rx_dst_cookie) == ((void*)0)) {
    dst_release(dst);
    sk->sk_rx_dst = ((void*)0);
   }
  }

  tcp_rcv_established(sk, skb);
  if (opt_skb)
   goto ipv6_pktoptions;
  return 0;
 }

 if (tcp_checksum_complete(skb))
  goto csum_err;

 if (sk->sk_state == TCP_LISTEN) {
  struct sock *nsk = tcp_v6_cookie_check(sk, skb);

  if (!nsk)
   goto discard;

  if (nsk != sk) {
   if (tcp_child_process(sk, nsk, skb))
    goto reset;
   if (opt_skb)
    __kfree_skb(opt_skb);
   return 0;
  }
 } else
  sock_rps_save_rxhash(sk, skb);

 if (tcp_rcv_state_process(sk, skb))
  goto reset;
 if (opt_skb)
  goto ipv6_pktoptions;
 return 0;

reset:
 tcp_v6_send_reset(sk, skb);
discard:
 if (opt_skb)
  __kfree_skb(opt_skb);
 kfree_skb(skb);
 return 0;
csum_err:
 TCP_INC_STATS(sock_net(sk), TCP_MIB_CSUMERRORS);
 TCP_INC_STATS(sock_net(sk), TCP_MIB_INERRS);
 goto discard;


ipv6_pktoptions:







 tp = tcp_sk(sk);
 if (TCP_SKB_CB(opt_skb)->end_seq == tp->rcv_nxt &&
     !((1 << sk->sk_state) & (TCPF_CLOSE | TCPF_LISTEN))) {
  if (np->rxopt.bits.rxinfo || np->rxopt.bits.rxoinfo)
   np->mcast_oif = tcp_v6_iif(opt_skb);
  if (np->rxopt.bits.rxhlim || np->rxopt.bits.rxohlim)
   np->mcast_hops = ipv6_hdr(opt_skb)->hop_limit;
  if (np->rxopt.bits.rxflow || np->rxopt.bits.rxtclass)
   np->rcv_flowinfo = ip6_flowinfo(ipv6_hdr(opt_skb));
  if (np->repflow)
   np->flow_label = ip6_flowlabel(ipv6_hdr(opt_skb));
  if (ipv6_opt_accepted(sk, opt_skb, &TCP_SKB_CB(opt_skb)->header.h6)) {
   skb_set_owner_r(opt_skb, sk);
   tcp_v6_restore_cb(opt_skb);
   opt_skb = xchg(&np->pktoptions, opt_skb);
  } else {
   __kfree_skb(opt_skb);
   opt_skb = xchg(&np->pktoptions, ((void*)0));
  }
 }

 kfree_skb(opt_skb);
 return 0;
}
