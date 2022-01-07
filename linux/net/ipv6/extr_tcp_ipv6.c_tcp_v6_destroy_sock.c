
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int inet6_destroy_sock (struct sock*) ;
 int tcp_v4_destroy_sock (struct sock*) ;

__attribute__((used)) static void tcp_v6_destroy_sock(struct sock *sk)
{
 tcp_v4_destroy_sock(sk);
 inet6_destroy_sock(sk);
}
