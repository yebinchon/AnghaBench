
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_timer; } ;


 scalar_t__ jiffies ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;

void inet_csk_reset_keepalive_timer(struct sock *sk, unsigned long len)
{
 sk_reset_timer(sk, &sk->sk_timer, jiffies + len);
}
