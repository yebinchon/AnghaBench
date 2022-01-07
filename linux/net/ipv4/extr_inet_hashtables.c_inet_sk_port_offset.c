
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct inet_sock {int inet_dport; int inet_daddr; int inet_rcv_saddr; } ;


 struct inet_sock* inet_sk (struct sock const*) ;
 int secure_ipv4_port_ephemeral (int ,int ,int ) ;

__attribute__((used)) static u32 inet_sk_port_offset(const struct sock *sk)
{
 const struct inet_sock *inet = inet_sk(sk);

 return secure_ipv4_port_ephemeral(inet->inet_rcv_saddr,
       inet->inet_daddr,
       inet->inet_dport);
}
