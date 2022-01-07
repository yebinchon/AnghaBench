
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int s_addr; } ;
struct sockaddr_in {scalar_t__ sin_family; int sin_port; TYPE_4__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct sock {int sk_bound_dev_if; int sk_state; TYPE_5__* sk_prot; int sk_protocol; } ;
struct rtable {int rt_flags; int dst; } ;
struct flowi4 {int daddr; scalar_t__ saddr; } ;
struct TYPE_6__ {struct flowi4 ip4; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_2__ fl; } ;
struct inet_sock {int mc_index; int inet_id; int inet_dport; int inet_daddr; scalar_t__ inet_rcv_saddr; scalar_t__ inet_saddr; int inet_sport; TYPE_3__ cork; scalar_t__ mc_addr; } ;
typedef scalar_t__ __be32 ;
struct TYPE_10__ {int (* rehash ) (struct sock*) ;} ;


 scalar_t__ AF_INET ;
 int EACCES ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int ENETUNREACH ;
 int IPSTATS_MIB_OUTNOROUTES ;
 int IP_INC_STATS (int ,int ) ;
 scalar_t__ IS_ERR (struct rtable*) ;
 int PTR_ERR (struct rtable*) ;
 int RTCF_BROADCAST ;
 int RT_CONN_FLAGS (struct sock*) ;
 int SOCK_BROADCAST ;
 int TCP_ESTABLISHED ;
 struct inet_sock* inet_sk (struct sock*) ;
 struct rtable* ip_route_connect (struct flowi4*,int ,scalar_t__,int ,int,int ,int ,int ,struct sock*) ;
 int ip_rt_put (struct rtable*) ;
 scalar_t__ ipv4_is_multicast (int ) ;
 scalar_t__ netif_index_is_l3_master (int ,int) ;
 int prandom_u32 () ;
 int reuseport_has_conns (struct sock*,int) ;
 int sk_dst_reset (struct sock*) ;
 int sk_dst_set (struct sock*,int *) ;
 int sk_set_txhash (struct sock*) ;
 int sock_flag (struct sock*,int ) ;
 int sock_net (struct sock*) ;
 int stub1 (struct sock*) ;

int __ip4_datagram_connect(struct sock *sk, struct sockaddr *uaddr, int addr_len)
{
 struct inet_sock *inet = inet_sk(sk);
 struct sockaddr_in *usin = (struct sockaddr_in *) uaddr;
 struct flowi4 *fl4;
 struct rtable *rt;
 __be32 saddr;
 int oif;
 int err;


 if (addr_len < sizeof(*usin))
  return -EINVAL;

 if (usin->sin_family != AF_INET)
  return -EAFNOSUPPORT;

 sk_dst_reset(sk);

 oif = sk->sk_bound_dev_if;
 saddr = inet->inet_saddr;
 if (ipv4_is_multicast(usin->sin_addr.s_addr)) {
  if (!oif || netif_index_is_l3_master(sock_net(sk), oif))
   oif = inet->mc_index;
  if (!saddr)
   saddr = inet->mc_addr;
 }
 fl4 = &inet->cork.fl.u.ip4;
 rt = ip_route_connect(fl4, usin->sin_addr.s_addr, saddr,
         RT_CONN_FLAGS(sk), oif,
         sk->sk_protocol,
         inet->inet_sport, usin->sin_port, sk);
 if (IS_ERR(rt)) {
  err = PTR_ERR(rt);
  if (err == -ENETUNREACH)
   IP_INC_STATS(sock_net(sk), IPSTATS_MIB_OUTNOROUTES);
  goto out;
 }

 if ((rt->rt_flags & RTCF_BROADCAST) && !sock_flag(sk, SOCK_BROADCAST)) {
  ip_rt_put(rt);
  err = -EACCES;
  goto out;
 }
 if (!inet->inet_saddr)
  inet->inet_saddr = fl4->saddr;
 if (!inet->inet_rcv_saddr) {
  inet->inet_rcv_saddr = fl4->saddr;
  if (sk->sk_prot->rehash)
   sk->sk_prot->rehash(sk);
 }
 inet->inet_daddr = fl4->daddr;
 inet->inet_dport = usin->sin_port;
 reuseport_has_conns(sk, 1);
 sk->sk_state = TCP_ESTABLISHED;
 sk_set_txhash(sk);
 inet->inet_id = prandom_u32();

 sk_dst_set(sk, &rt->dst);
 err = 0;
out:
 return err;
}
