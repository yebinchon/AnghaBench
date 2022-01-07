
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sock {int sk_v6_rcv_saddr; } ;
struct TYPE_2__ {int inet_num; } ;


 TYPE_1__* inet_sk (struct sock*) ;
 int ipv6_portaddr_hash (int ,int *,int ) ;
 int sock_net (struct sock*) ;
 int udp_lib_rehash (struct sock*,int ) ;

void udp_v6_rehash(struct sock *sk)
{
 u16 new_hash = ipv6_portaddr_hash(sock_net(sk),
       &sk->sk_v6_rcv_saddr,
       inet_sk(sk)->inet_num);

 udp_lib_rehash(sk, new_hash);
}
