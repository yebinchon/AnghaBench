
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_userlocks; TYPE_1__* sk_prot; scalar_t__ sk_bound_dev_if; int sk_state; } ;
struct inet_sock {scalar_t__ inet_sport; scalar_t__ inet_dport; scalar_t__ inet_daddr; } ;
struct TYPE_2__ {int (* unhash ) (struct sock*) ;} ;


 int SOCK_BINDADDR_LOCK ;
 int SOCK_BINDPORT_LOCK ;
 int TCP_CLOSE ;
 int inet_reset_saddr (struct sock*) ;
 struct inet_sock* inet_sk (struct sock*) ;
 int sk_dst_reset (struct sock*) ;
 int sock_rps_reset_rxhash (struct sock*) ;
 int stub1 (struct sock*) ;

int __udp_disconnect(struct sock *sk, int flags)
{
 struct inet_sock *inet = inet_sk(sk);




 sk->sk_state = TCP_CLOSE;
 inet->inet_daddr = 0;
 inet->inet_dport = 0;
 sock_rps_reset_rxhash(sk);
 sk->sk_bound_dev_if = 0;
 if (!(sk->sk_userlocks & SOCK_BINDADDR_LOCK))
  inet_reset_saddr(sk);

 if (!(sk->sk_userlocks & SOCK_BINDPORT_LOCK)) {
  sk->sk_prot->unhash(sk);
  inet->inet_sport = 0;
 }
 sk_dst_reset(sk);
 return 0;
}
