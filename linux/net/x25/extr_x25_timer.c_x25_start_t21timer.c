
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x25_sock {scalar_t__ t21; int timer; } ;
struct sock {int dummy; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct x25_sock* x25_sk (struct sock*) ;

void x25_start_t21timer(struct sock *sk)
{
 struct x25_sock *x25 = x25_sk(sk);

 mod_timer(&x25->timer, jiffies + x25->t21);
}
