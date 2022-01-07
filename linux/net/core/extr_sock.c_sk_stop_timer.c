
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;


 int __sock_put (struct sock*) ;
 scalar_t__ del_timer (struct timer_list*) ;

void sk_stop_timer(struct sock *sk, struct timer_list* timer)
{
 if (del_timer(timer))
  __sock_put(sk);
}
