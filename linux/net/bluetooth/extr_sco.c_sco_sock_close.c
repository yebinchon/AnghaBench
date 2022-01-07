
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __sco_sock_close (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int sco_sock_clear_timer (struct sock*) ;
 int sco_sock_kill (struct sock*) ;

__attribute__((used)) static void sco_sock_close(struct sock *sk)
{
 sco_sock_clear_timer(sk);
 lock_sock(sk);
 __sco_sock_close(sk);
 release_sock(sk);
 sco_sock_kill(sk);
}
