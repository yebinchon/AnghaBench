
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct tcphdr {int seq; int source; int dest; } ;
struct tcp_sock {void* mtu_info; int snd_nxt; void* snd_una; int fastopen_rsk; } ;
struct sock {int sk_state; int sk_err; int sk_err_soft; int (* sk_error_report ) (struct sock*) ;int sk_tsq_flags; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct request_sock {int sk; } ;
struct net {int dummy; } ;
struct ipv6hdr {int saddr; int daddr; } ;
struct ipv6_pinfo {scalar_t__ min_hopcount; scalar_t__ recverr; int dst_cookie; } ;
struct inet6_skb_parm {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
typedef void* __u32 ;
typedef int __be32 ;
struct TYPE_9__ {int ifindex; } ;
struct TYPE_8__ {scalar_t__ hop_limit; } ;
struct TYPE_7__ {void* snt_isn; } ;
struct TYPE_6__ {int (* redirect ) (struct dst_entry*,struct sock*,struct sk_buff*) ;} ;


 int ENOENT ;
 int ICMP6_MIB_INERRORS ;
 scalar_t__ ICMPV6_PKT_TOOBIG ;
 int LINUX_MIB_LOCKDROPPEDICMPS ;
 int LINUX_MIB_OUTOFWINDOWICMPS ;
 int LINUX_MIB_TCPMINTTLDROP ;
 scalar_t__ NDISC_REDIRECT ;
 int TCP_CLOSE ;
 int TCP_LISTEN ;
 int TCP_MTU_REDUCED_DEFERRED ;
 int TCP_NEW_SYN_RECV ;


 int TCP_TIME_WAIT ;
 int __ICMP6_INC_STATS (struct net*,int ,int ) ;
 int __NET_INC_STATS (struct net*,int ) ;
 int __in6_dev_get (TYPE_4__*) ;
 struct sock* __inet6_lookup_established (struct net*,int *,int *,int ,int *,int ,int ,int ) ;
 struct dst_entry* __sk_dst_check (struct sock*,int ) ;
 int between (void*,void*,int ) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct net* dev_net (TYPE_4__*) ;
 int icmpv6_err_convert (scalar_t__,scalar_t__,int*) ;
 int inet6_sdif (struct sk_buff*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 int ip6_sk_accept_pmtu (struct sock*) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 void* ntohl (int ) ;
 int ntohs (int ) ;
 struct request_sock* rcu_dereference (int ) ;
 int sock_hold (struct sock*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int sock_put (struct sock*) ;
 int stub1 (struct dst_entry*,struct sock*,struct sk_buff*) ;
 int stub2 (struct sock*) ;
 int stub3 (struct sock*) ;
 int tcp_done (struct sock*) ;
 int tcp_hashinfo ;
 struct ipv6_pinfo* tcp_inet6_sk (struct sock*) ;
 int tcp_req_err (struct sock*,void*,int) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_v6_mtu_reduced (struct sock*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int tcp_v6_err(struct sk_buff *skb, struct inet6_skb_parm *opt,
  u8 type, u8 code, int offset, __be32 info)
{
 const struct ipv6hdr *hdr = (const struct ipv6hdr *)skb->data;
 const struct tcphdr *th = (struct tcphdr *)(skb->data+offset);
 struct net *net = dev_net(skb->dev);
 struct request_sock *fastopen;
 struct ipv6_pinfo *np;
 struct tcp_sock *tp;
 __u32 seq, snd_una;
 struct sock *sk;
 bool fatal;
 int err;

 sk = __inet6_lookup_established(net, &tcp_hashinfo,
     &hdr->daddr, th->dest,
     &hdr->saddr, ntohs(th->source),
     skb->dev->ifindex, inet6_sdif(skb));

 if (!sk) {
  __ICMP6_INC_STATS(net, __in6_dev_get(skb->dev),
      ICMP6_MIB_INERRORS);
  return -ENOENT;
 }

 if (sk->sk_state == TCP_TIME_WAIT) {
  inet_twsk_put(inet_twsk(sk));
  return 0;
 }
 seq = ntohl(th->seq);
 fatal = icmpv6_err_convert(type, code, &err);
 if (sk->sk_state == TCP_NEW_SYN_RECV) {
  tcp_req_err(sk, seq, fatal);
  return 0;
 }

 bh_lock_sock(sk);
 if (sock_owned_by_user(sk) && type != ICMPV6_PKT_TOOBIG)
  __NET_INC_STATS(net, LINUX_MIB_LOCKDROPPEDICMPS);

 if (sk->sk_state == TCP_CLOSE)
  goto out;

 if (ipv6_hdr(skb)->hop_limit < tcp_inet6_sk(sk)->min_hopcount) {
  __NET_INC_STATS(net, LINUX_MIB_TCPMINTTLDROP);
  goto out;
 }

 tp = tcp_sk(sk);

 fastopen = rcu_dereference(tp->fastopen_rsk);
 snd_una = fastopen ? tcp_rsk(fastopen)->snt_isn : tp->snd_una;
 if (sk->sk_state != TCP_LISTEN &&
     !between(seq, snd_una, tp->snd_nxt)) {
  __NET_INC_STATS(net, LINUX_MIB_OUTOFWINDOWICMPS);
  goto out;
 }

 np = tcp_inet6_sk(sk);

 if (type == NDISC_REDIRECT) {
  if (!sock_owned_by_user(sk)) {
   struct dst_entry *dst = __sk_dst_check(sk, np->dst_cookie);

   if (dst)
    dst->ops->redirect(dst, sk, skb);
  }
  goto out;
 }

 if (type == ICMPV6_PKT_TOOBIG) {




  if (sk->sk_state == TCP_LISTEN)
   goto out;

  if (!ip6_sk_accept_pmtu(sk))
   goto out;

  tp->mtu_info = ntohl(info);
  if (!sock_owned_by_user(sk))
   tcp_v6_mtu_reduced(sk);
  else if (!test_and_set_bit(TCP_MTU_REDUCED_DEFERRED,
        &sk->sk_tsq_flags))
   sock_hold(sk);
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
  } else
   sk->sk_err_soft = err;
  goto out;
 }

 if (!sock_owned_by_user(sk) && np->recverr) {
  sk->sk_err = err;
  sk->sk_error_report(sk);
 } else
  sk->sk_err_soft = err;

out:
 bh_unlock_sock(sk);
 sock_put(sk);
 return 0;
}
