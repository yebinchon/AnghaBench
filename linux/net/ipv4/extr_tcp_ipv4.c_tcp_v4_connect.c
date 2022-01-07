
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_19__ {int mss_clamp; scalar_t__ ts_recent_stamp; scalar_t__ ts_recent; } ;
struct tcp_sock {int tsoffset; int write_seq; int repair; TYPE_7__ rx_opt; } ;
struct TYPE_14__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_2__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_route_caps; int sk_gso_type; int sk_bound_dev_if; } ;
struct rtable {int rt_flags; int dst; } ;
struct TYPE_18__ {scalar_t__ faddr; scalar_t__ optlen; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_6__ opt; } ;
struct inet_timewait_death_row {int dummy; } ;
struct flowi4 {scalar_t__ daddr; scalar_t__ saddr; } ;
struct TYPE_15__ {struct flowi4 ip4; } ;
struct TYPE_16__ {TYPE_3__ u; } ;
struct TYPE_17__ {TYPE_4__ fl; } ;
struct inet_sock {scalar_t__ inet_daddr; scalar_t__ inet_dport; int inet_id; scalar_t__ inet_saddr; scalar_t__ inet_sport; TYPE_5__ cork; int inet_opt; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;
struct TYPE_13__ {struct inet_timewait_death_row tcp_death_row; } ;
struct TYPE_20__ {TYPE_1__ ipv4; } ;
struct TYPE_12__ {scalar_t__ icsk_ext_hdr_len; } ;


 scalar_t__ AF_INET ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int IPPROTO_TCP ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int IP_INC_STATS (TYPE_8__*,int ) ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 int RT_CONN_FLAGS (struct sock*) ;
 int SKB_GSO_TCPV4 ;
 int TCP_CLOSE ;
 int TCP_MSS_DEFAULT ;
 int TCP_SYN_SENT ;
 int WRITE_ONCE (int ,int ) ;
 TYPE_10__* inet_csk (struct sock*) ;
 int inet_hash_connect (struct inet_timewait_death_row*,struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct rtable* ip_route_connect (struct flowi4*,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,struct sock*) ;
 struct rtable* ip_route_newports (struct flowi4*,struct rtable*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct sock*) ;
 int ip_rt_put (struct rtable*) ;
 scalar_t__ likely (int) ;
 int lockdep_sock_is_held (struct sock*) ;
 int prandom_u32 () ;
 struct ip_options_rcu* rcu_dereference_protected (int ,int ) ;
 int secure_tcp_seq (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int secure_tcp_ts_off (TYPE_8__*,scalar_t__,scalar_t__) ;
 int sk_daddr_set (struct sock*,scalar_t__) ;
 int sk_rcv_saddr_set (struct sock*,scalar_t__) ;
 int sk_set_txhash (struct sock*) ;
 int sk_setup_caps (struct sock*,int *) ;
 TYPE_8__* sock_net (struct sock*) ;
 int tcp_connect (struct sock*) ;
 scalar_t__ tcp_fastopen_defer_connect (struct sock*,int*) ;
 int tcp_set_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

int tcp_v4_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct sockaddr_in *usin = (struct sockaddr_in *)uaddr;
 struct inet_sock *inet = inet_sk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 __be16 orig_sport, orig_dport;
 __be32 daddr, nexthop;
 struct flowi4 *fl4;
 struct rtable *rt;
 int err;
 struct ip_options_rcu *inet_opt;
 struct inet_timewait_death_row *tcp_death_row = &sock_net(sk)->ipv4.tcp_death_row;

 if (addr_len < sizeof(struct sockaddr_in))
  return -EINVAL;

 if (usin->sin_family != AF_INET)
  return -EAFNOSUPPORT;

 nexthop = daddr = usin->sin_addr.s_addr;
 inet_opt = rcu_dereference_protected(inet->inet_opt,
          lockdep_sock_is_held(sk));
 if (inet_opt && inet_opt->opt.srr) {
  if (!daddr)
   return -EINVAL;
  nexthop = inet_opt->opt.faddr;
 }

 orig_sport = inet->inet_sport;
 orig_dport = usin->sin_port;
 fl4 = &inet->cork.fl.u.ip4;
 rt = ip_route_connect(fl4, nexthop, inet->inet_saddr,
         RT_CONN_FLAGS(sk), sk->sk_bound_dev_if,
         IPPROTO_TCP,
         orig_sport, orig_dport, sk);
 if (IS_ERR(rt)) {
  err = PTR_ERR(rt);
  if (err == -ENETUNREACH)
   IP_INC_STATS(sock_net(sk), IPSTATS_MIB_OUTNOROUTES);
  return err;
 }

 if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
  ip_rt_put(rt);
  return -ENETUNREACH;
 }

 if (!inet_opt || !inet_opt->opt.srr)
  daddr = fl4->daddr;

 if (!inet->inet_saddr)
  inet->inet_saddr = fl4->saddr;
 sk_rcv_saddr_set(sk, inet->inet_saddr);

 if (tp->rx_opt.ts_recent_stamp && inet->inet_daddr != daddr) {

  tp->rx_opt.ts_recent = 0;
  tp->rx_opt.ts_recent_stamp = 0;
  if (likely(!tp->repair))
   WRITE_ONCE(tp->write_seq, 0);
 }

 inet->inet_dport = usin->sin_port;
 sk_daddr_set(sk, daddr);

 inet_csk(sk)->icsk_ext_hdr_len = 0;
 if (inet_opt)
  inet_csk(sk)->icsk_ext_hdr_len = inet_opt->opt.optlen;

 tp->rx_opt.mss_clamp = TCP_MSS_DEFAULT;






 tcp_set_state(sk, TCP_SYN_SENT);
 err = inet_hash_connect(tcp_death_row, sk);
 if (err)
  goto failure;

 sk_set_txhash(sk);

 rt = ip_route_newports(fl4, rt, orig_sport, orig_dport,
          inet->inet_sport, inet->inet_dport, sk);
 if (IS_ERR(rt)) {
  err = PTR_ERR(rt);
  rt = ((void*)0);
  goto failure;
 }

 sk->sk_gso_type = SKB_GSO_TCPV4;
 sk_setup_caps(sk, &rt->dst);
 rt = ((void*)0);

 if (likely(!tp->repair)) {
  if (!tp->write_seq)
   WRITE_ONCE(tp->write_seq,
       secure_tcp_seq(inet->inet_saddr,
        inet->inet_daddr,
        inet->inet_sport,
        usin->sin_port));
  tp->tsoffset = secure_tcp_ts_off(sock_net(sk),
       inet->inet_saddr,
       inet->inet_daddr);
 }

 inet->inet_id = prandom_u32();

 if (tcp_fastopen_defer_connect(sk, &err))
  return err;
 if (err)
  goto failure;

 err = tcp_connect(sk);

 if (err)
  goto failure;

 return 0;

failure:




 tcp_set_state(sk, TCP_CLOSE);
 ip_rt_put(rt);
 sk->sk_route_caps = 0;
 inet->inet_dport = 0;
 return err;
}
