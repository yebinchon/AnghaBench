
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {int inet_rcv_saddr; } ;
struct TYPE_3__ {unsigned int udp_portaddr_hash; } ;


 int INADDR_ANY ;
 int htonl (int ) ;
 TYPE_2__* inet_sk (struct sock*) ;
 unsigned int ipv4_portaddr_hash (int ,int ,unsigned short) ;
 int sock_net (struct sock*) ;
 int udp_lib_get_port (struct sock*,unsigned short,unsigned int) ;
 TYPE_1__* udp_sk (struct sock*) ;

int udp_v4_get_port(struct sock *sk, unsigned short snum)
{
 unsigned int hash2_nulladdr =
  ipv4_portaddr_hash(sock_net(sk), htonl(INADDR_ANY), snum);
 unsigned int hash2_partial =
  ipv4_portaddr_hash(sock_net(sk), inet_sk(sk)->inet_rcv_saddr, 0);


 udp_sk(sk)->udp_portaddr_hash = hash2_partial;
 return udp_lib_get_port(sk, snum, hash2_nulladdr);
}
