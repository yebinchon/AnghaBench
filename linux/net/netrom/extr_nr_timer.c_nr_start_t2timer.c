
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct nr_sock {scalar_t__ t2; int t2timer; } ;


 scalar_t__ jiffies ;
 struct nr_sock* nr_sk (struct sock*) ;
 int sk_reset_timer (struct sock*,int *,scalar_t__) ;

void nr_start_t2timer(struct sock *sk)
{
 struct nr_sock *nr = nr_sk(sk);

 sk_reset_timer(sk, &nr->t2timer, jiffies + nr->t2);
}
