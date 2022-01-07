
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; } ;


 scalar_t__ SLOW_INTERVAL ;
 int dn_slow_timer ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;
 int timer_setup (int *,int ,int ) ;

void dn_start_slow_timer(struct sock *sk)
{
 timer_setup(&sk->sk_timer, dn_slow_timer, 0);
 sk_reset_timer(sk, &sk->sk_timer, jiffies + SLOW_INTERVAL);
}
