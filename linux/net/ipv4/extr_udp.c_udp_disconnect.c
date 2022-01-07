
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int __udp_disconnect (struct sock*,int) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;

int udp_disconnect(struct sock *sk, int flags)
{
 lock_sock(sk);
 __udp_disconnect(sk, flags);
 release_sock(sk);
 return 0;
}
