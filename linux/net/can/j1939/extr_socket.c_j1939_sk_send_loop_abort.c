
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_err; int (* sk_error_report ) (struct sock*) ;} ;


 int stub1 (struct sock*) ;

void j1939_sk_send_loop_abort(struct sock *sk, int err)
{
 sk->sk_err = err;

 sk->sk_error_report(sk);
}
