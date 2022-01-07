
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_err; int (* sk_error_report ) (struct sock*) ;} ;


 int __udp_disconnect (struct sock*,int ) ;
 int lock_sock (struct sock*) ;
 int release_sock (struct sock*) ;
 int stub1 (struct sock*) ;

int raw_abort(struct sock *sk, int err)
{
 lock_sock(sk);

 sk->sk_err = err;
 sk->sk_error_report(sk);
 __udp_disconnect(sk, 0);

 release_sock(sk);

 return 0;
}
