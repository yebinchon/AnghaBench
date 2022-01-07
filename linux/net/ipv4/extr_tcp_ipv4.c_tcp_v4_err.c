
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct tcphdr {int seq; int source; int dest; } ;
struct tcp_sock {scalar_t__ tcp_mstamp; int srtt_us; int snd_una; int mtu_info; int snd_nxt; int fastopen_rsk; } ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int (* sk_error_report ) (struct sock*) ;int sk_tsq_flags; } ;
struct sk_buff {int dev; scalar_t__ data; } ;
struct request_sock {int sk; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; scalar_t__ ttl; int saddr; int daddr; } ;
struct inet_sock {scalar_t__ min_ttl; scalar_t__ recverr; } ;
struct inet_connection_sock {scalar_t__ icsk_rto; int icsk_backoff; int icsk_retransmits; } ;
typedef scalar_t__ s32 ;
struct TYPE_6__ {int errno; } ;
struct TYPE_5__ {int type; int code; } ;
struct TYPE_4__ {int snt_isn; } ;


 int EHOSTUNREACH ;
 int ENOENT ;
 int EPROTO ;

 int const ICMP_FRAG_NEEDED ;
 int const ICMP_HOST_UNREACH ;
 int ICMP_MIB_INERRORS ;
 int const ICMP_NET_UNREACH ;




 int ICSK_TIME_RETRANS ;
 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int LINUX_MIB_TCPMINTTLDROP ;
 int const NR_ICMP_UNREACH ;
 int TCP_CLOSE ;
 int TCP_LISTEN ;
 int TCP_MTU_REDUCED_DEFERRED ;
 int TCP_NEW_SYN_RECV ;
 int TCP_RTO_MAX ;


 scalar_t__ TCP_TIMEOUT_INIT ;
 int TCP_TIME_WAIT ;
 int WARN_ON_ONCE (int) ;
 int __ICMP_INC_STATS (struct net*,int ) ;
 int __NET_INC_STATS (struct net*,int ) ;
 struct sock* __inet_lookup_established (struct net*,int *,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ __tcp_set_rto (struct tcp_sock*) ;
 int between (int ,int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct net* dev_net (int ) ;
 int do_redirect (struct sk_buff*,struct sock*) ;
 TYPE_3__* icmp_err_convert ;
 TYPE_2__* icmp_hdr (struct sk_buff*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 int inet_csk_reset_xmit_timer (struct sock*,int ,scalar_t__,int ) ;
 scalar_t__ inet_csk_rto_backoff (struct inet_connection_sock*,int ) ;
 int inet_iif (struct sk_buff*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 struct request_sock* rcu_dereference (int ) ;
 int sock_hold (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_hashinfo ;
 int tcp_mstamp_refresh (struct tcp_sock*) ;
 int tcp_req_err (struct sock*,int ,int) ;
 int tcp_retransmit_timer (struct sock*) ;
 TYPE_1__* tcp_rsk (struct request_sock*) ;
 struct sk_buff* tcp_rtx_queue_head (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ tcp_skb_timestamp_us (struct sk_buff*) ;
 int tcp_v4_mtu_reduced (struct sock*) ;
 int test_and_set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;
 scalar_t__ usecs_to_jiffies (int ) ;

int tcp_v4_err(struct sk_buff *icmp_skb, u32 info)
{
 const struct iphdr *iph = (const struct iphdr *)icmp_skb->data;
 struct tcphdr *th = (struct tcphdr *)(icmp_skb->data + (iph->ihl << 2));
 struct inet_connection_sock *icsk;
 struct tcp_sock *tp;
 struct inet_sock *inet;
 const int type = icmp_hdr(icmp_skb)->type;
 const int code = icmp_hdr(icmp_skb)->code;
 struct sock *sk;
 struct sk_buff *skb;
 struct request_sock *fastopen;
 u32 seq, snd_una;
 s32 remaining;
 u32 delta_us;
 int err;
 struct net *net = dev_net(icmp_skb->dev);

 sk = __inet_lookup_established(net, &tcp_hashinfo, iph->daddr,
           th->dest, iph->saddr, ntohs(th->source),
           inet_iif(icmp_skb), 0);
 if (!sk) {
  __ICMP_INC_STATS(net, ICMP_MIB_INERRORS);
  return -ENOENT;
 }
 if (sk->sk_state == TCP_TIME_WAIT) {
  inet_twsk_put(inet_twsk(sk));
  return 0;
 }
 seq = ntohl(th->seq);
 if (sk->sk_state == TCP_NEW_SYN_RECV) {
  tcp_req_err(sk, seq, type == 133 ||
         type == 130 ||
         (type == 134 &&
          (code == ICMP_NET_UNREACH ||
           code == ICMP_HOST_UNREACH)));
  return 0;
 }

 bh_lock_sock(sk);





 if (sock_owned_by_user(sk)) {
  if (!(type == 134 && code == ICMP_FRAG_NEEDED))
   __NET_INC_STATS(net, LINUX_MIB_LOCKDROPPEDICMPS);
 }
 if (sk->sk_state == TCP_CLOSE)
  goto out;

 if (unlikely(iph->ttl < inet_sk(sk)->min_ttl)) {
  __NET_INC_STATS(net, LINUX_MIB_TCPMINTTLDROP);
  goto out;
 }

 icsk = inet_csk(sk);
 tp = tcp_sk(sk);

 fastopen = rcu_dereference(tp->fastopen_rsk);
 snd_una = fastopen ? tcp_rsk(fastopen)->snt_isn : tp->snd_una;
 if (sk->sk_state != TCP_LISTEN &&
     !between(seq, snd_una, tp->snd_nxt)) {
  __NET_INC_STATS(net, LINUX_MIB_OUTOFWINDOWICMPS);
  goto out;
 }

 switch (type) {
 case 132:
  if (!sock_owned_by_user(sk))
   do_redirect(icmp_skb, sk);
  goto out;
 case 131:

  goto out;
 case 133:
  err = EPROTO;
  break;
 case 134:
  if (code > NR_ICMP_UNREACH)
   goto out;

  if (code == ICMP_FRAG_NEEDED) {




   if (sk->sk_state == TCP_LISTEN)
    goto out;

   tp->mtu_info = info;
   if (!sock_owned_by_user(sk)) {
    tcp_v4_mtu_reduced(sk);
   } else {
    if (!test_and_set_bit(TCP_MTU_REDUCED_DEFERRED, &sk->sk_tsq_flags))
     sock_hold(sk);
   }
   goto out;
  }

  err = icmp_err_convert[code].errno;


  if (code != ICMP_NET_UNREACH && code != ICMP_HOST_UNREACH)
   break;
  if (seq != tp->snd_una || !icsk->icsk_retransmits ||
      !icsk->icsk_backoff || fastopen)
   break;

  if (sock_owned_by_user(sk))
   break;

  skb = tcp_rtx_queue_head(sk);
  if (WARN_ON_ONCE(!skb))
   break;

  icsk->icsk_backoff--;
  icsk->icsk_rto = tp->srtt_us ? __tcp_set_rto(tp) :
            TCP_TIMEOUT_INIT;
  icsk->icsk_rto = inet_csk_rto_backoff(icsk, TCP_RTO_MAX);


  tcp_mstamp_refresh(tp);
  delta_us = (u32)(tp->tcp_mstamp - tcp_skb_timestamp_us(skb));
  remaining = icsk->icsk_rto -
       usecs_to_jiffies(delta_us);

  if (remaining > 0) {
   inet_csk_reset_xmit_timer(sk, ICSK_TIME_RETRANS,
        remaining, TCP_RTO_MAX);
  } else {


   tcp_retransmit_timer(sk);
  }

  break;
 case 130:
  err = EHOSTUNREACH;
  break;
 default:
  goto out;
 }

 switch (sk->sk_state) {
 case 128:
 case 129:



  if (fastopen && !fastopen->sk)
   break;

  if (!sock_owned_by_user(sk)) {
   sk->sk_err = err;

   sk->sk_error_report(sk);

   tcp_done(sk);
  } else {
   sk->sk_err_soft = err;
  }
  goto out;
 }
 inet = inet_sk(sk);
 if (!sock_owned_by_user(sk) && inet->recverr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 } else {
  sk->sk_err_soft = err;
 }

out:
 bh_unlock_sock(sk);
 sock_put(sk);
 return 0;
}
