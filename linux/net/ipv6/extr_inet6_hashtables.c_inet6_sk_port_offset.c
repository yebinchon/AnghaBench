
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int s6_addr32; } ;
struct TYPE_3__ {int s6_addr32; } ;
struct sock {TYPE_2__ sk_v6_daddr; TYPE_1__ sk_v6_rcv_saddr; } ;
struct inet_sock {int inet_dport; } ;


 struct inet_sock* inet_sk (struct sock const*) ;
 int secure_ipv6_port_ephemeral (int ,int ,int ) ;

__attribute__((used)) static u32 inet6_sk_port_offset(const struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);

 return secure_ipv6_port_ephemeral(sk->sk_v6_rcv_saddr.s6_addr32,
       sk->sk_v6_daddr.s6_addr32,
       inet->inet_dport);
}
