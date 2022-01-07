
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;

void nr_start_heartbeat(struct sock *sk)
{
 sk_reset_timer(sk, &sk->sk_timer, jiffies + 5 * HZ);
}
