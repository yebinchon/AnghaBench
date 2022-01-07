
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __rfcomm_sock_close (struct sock*) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

__attribute__((used)) static void rfcomm_sock_close(struct sock *sk)
{
 lock_sock(sk);
 __rfcomm_sock_close(sk);
 release_sock(sk);
}
