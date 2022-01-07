
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; } ;
struct net {int dummy; } ;
struct inet_sock {scalar_t__ inet_daddr; scalar_t__ inet_dport; scalar_t__ inet_rcv_saddr; } ;
typedef scalar_t__ __be32 ;
typedef scalar_t__ __be16 ;
struct TYPE_2__ {unsigned short udp_port_hash; } ;


 struct inet_sock* inet_sk (struct sock*) ;
 int ip_mc_sf_allow (struct sock*,scalar_t__,scalar_t__,int,int) ;
 scalar_t__ ipv6_only_sock (struct sock*) ;
 int net_eq (int ,struct net*) ;
 int sock_net (struct sock*) ;
 TYPE_1__* udp_sk (struct sock*) ;
 int udp_sk_bound_dev_eq (struct net*,int ,int,int) ;

__attribute__((used)) static inline bool __udp_is_mcast_sock(struct net *net, struct sock *sk,
           __be16 loc_port, __be32 loc_addr,
           __be16 rmt_port, __be32 rmt_addr,
           int dif, int sdif, unsigned short hnum)
{
 struct inet_sock *inet = inet_sk(sk);

 if (!net_eq(sock_net(sk), net) ||
     udp_sk(sk)->udp_port_hash != hnum ||
     (inet->inet_daddr && inet->inet_daddr != rmt_addr) ||
     (inet->inet_dport != rmt_port && inet->inet_dport) ||
     (inet->inet_rcv_saddr && inet->inet_rcv_saddr != loc_addr) ||
     ipv6_only_sock(sk) ||
     !udp_sk_bound_dev_eq(net, sk->sk_bound_dev_if, dif, sdif))
  return 0;
 if (!ip_mc_sf_allow(sk, loc_addr, rmt_addr, dif, sdif))
  return 0;
 return 1;
}
