
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_v6_rcv_saddr; } ;
struct TYPE_2__ {unsigned int udp_portaddr_hash; } ;


 int in6addr_any ;
 unsigned int ipv6_portaddr_hash (int ,int *,unsigned short) ;
 int sock_net (struct sock*) ;
 int udp_lib_get_port (struct sock*,unsigned short,unsigned int) ;
 TYPE_1__* udp_sk (struct sock*) ;

int udp_v6_get_port(struct sock *sk, unsigned short snum)
{
 unsigned int hash2_nulladdr =
  ipv6_portaddr_hash(sock_net(sk), &in6addr_any, snum);
 unsigned int hash2_partial =
  ipv6_portaddr_hash(sock_net(sk), &sk->sk_v6_rcv_saddr, 0);


 udp_sk(sk)->udp_portaddr_hash = hash2_partial;
 return udp_lib_get_port(sk, snum, hash2_nulladdr);
}
