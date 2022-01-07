
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


struct TYPE_7__ {scalar_t__ s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; scalar_t__ sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {scalar_t__ sk_route_caps; int sk_bound_dev_if; } ;
struct rtable {int rt_flags; int dst; } ;
struct TYPE_11__ {scalar_t__ faddr; scalar_t__ optlen; scalar_t__ srr; } ;
struct ip_options_rcu {TYPE_5__ opt; } ;
struct flowi4 {scalar_t__ daddr; scalar_t__ saddr; } ;
struct TYPE_8__ {struct flowi4 ip4; } ;
struct TYPE_9__ {TYPE_2__ u; } ;
struct TYPE_10__ {TYPE_3__ fl; } ;
struct inet_sock {scalar_t__ inet_saddr; scalar_t__ inet_dport; int inet_id; scalar_t__ inet_sport; int inet_daddr; TYPE_4__ cork; int inet_opt; } ;
struct dccp_sock {int dccps_iss; int dccps_role; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;
struct TYPE_12__ {scalar_t__ icsk_ext_hdr_len; } ;


 scalar_t__ AF_INET ;
 int DCCP_CLOSED ;
 int DCCP_REQUESTING ;
 int DCCP_ROLE_CLIENT ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int IPPROTO_DCCP ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int RTCF_BROADCAST ;
 int RTCF_MULTICAST ;
 int RT_CONN_FLAGS (struct sock*) ;
 int dccp_connect (struct sock*) ;
 int dccp_death_row ;
 int dccp_set_state (struct sock*,int ) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 TYPE_6__* inet_csk (struct sock*) ;
 int inet_hash_connect (int *,struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct rtable* ip_route_connect (struct flowi4*,scalar_t__,scalar_t__,int ,int ,int ,scalar_t__,scalar_t__,struct sock*) ;
 struct rtable* ip_route_newports (struct flowi4*,struct rtable*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,struct sock*) ;
 int ip_rt_put (struct rtable*) ;
 int lockdep_sock_is_held (struct sock*) ;
 int prandom_u32 () ;
 struct ip_options_rcu* rcu_dereference_protected (int ,int ) ;
 int secure_dccp_sequence_number (scalar_t__,int ,scalar_t__,scalar_t__) ;
 int sk_daddr_set (struct sock*,scalar_t__) ;
 int sk_rcv_saddr_set (struct sock*,scalar_t__) ;
 int sk_setup_caps (struct sock*,int *) ;

int dccp_v4_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 const struct sockaddr_in *usin = (struct sockaddr_in *)uaddr;
 struct inet_sock *inet = inet_sk(sk);
 struct dccp_sock *dp = dccp_sk(sk);
 __be16 orig_sport, orig_dport;
 __be32 daddr, nexthop;
 struct flowi4 *fl4;
 struct rtable *rt;
 int err;
 struct ip_options_rcu *inet_opt;

 dp->dccps_role = DCCP_ROLE_CLIENT;

 if (addr_len < sizeof(struct sockaddr_in))
  return -EINVAL;

 if (usin->sin_family != AF_INET)
  return -EAFNOSUPPORT;

 nexthop = daddr = usin->sin_addr.s_addr;

 inet_opt = rcu_dereference_protected(inet->inet_opt,
          lockdep_sock_is_held(sk));
 if (inet_opt != ((void*)0) && inet_opt->opt.srr) {
  if (daddr == 0)
   return -EINVAL;
  nexthop = inet_opt->opt.faddr;
 }

 orig_sport = inet->inet_sport;
 orig_dport = usin->sin_port;
 fl4 = &inet->cork.fl.u.ip4;
 rt = ip_route_connect(fl4, nexthop, inet->inet_saddr,
         RT_CONN_FLAGS(sk), sk->sk_bound_dev_if,
         IPPROTO_DCCP,
         orig_sport, orig_dport, sk);
 if (IS_ERR(rt))
  return PTR_ERR(rt);

 if (rt->rt_flags & (RTCF_MULTICAST | RTCF_BROADCAST)) {
  ip_rt_put(rt);
  return -ENETUNREACH;
 }

 if (inet_opt == ((void*)0) || !inet_opt->opt.srr)
  daddr = fl4->daddr;

 if (inet->inet_saddr == 0)
  inet->inet_saddr = fl4->saddr;
 sk_rcv_saddr_set(sk, inet->inet_saddr);
 inet->inet_dport = usin->sin_port;
 sk_daddr_set(sk, daddr);

 inet_csk(sk)->icsk_ext_hdr_len = 0;
 if (inet_opt)
  inet_csk(sk)->icsk_ext_hdr_len = inet_opt->opt.optlen;






 dccp_set_state(sk, DCCP_REQUESTING);
 err = inet_hash_connect(&dccp_death_row, sk);
 if (err != 0)
  goto failure;

 rt = ip_route_newports(fl4, rt, orig_sport, orig_dport,
          inet->inet_sport, inet->inet_dport, sk);
 if (IS_ERR(rt)) {
  err = PTR_ERR(rt);
  rt = ((void*)0);
  goto failure;
 }

 sk_setup_caps(sk, &rt->dst);

 dp->dccps_iss = secure_dccp_sequence_number(inet->inet_saddr,
          inet->inet_daddr,
          inet->inet_sport,
          inet->inet_dport);
 inet->inet_id = prandom_u32();

 err = dccp_connect(sk);
 rt = ((void*)0);
 if (err != 0)
  goto failure;
out:
 return err;
failure:



 dccp_set_state(sk, DCCP_CLOSED);
 ip_rt_put(rt);
 sk->sk_route_caps = 0;
 inet->inet_dport = 0;
 goto out;
}
