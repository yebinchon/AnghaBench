
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct sock {TYPE_1__ sk_timer; } ;


 scalar_t__ SOCK_DESTROY_TIME ;
 int add_timer (TYPE_1__*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 struct sock* sk ;
 scalar_t__ sk_has_allocations (struct sock*) ;
 int sk_timer ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void atalk_destroy_timer(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);

 if (sk_has_allocations(sk)) {
  sk->sk_timer.expires = jiffies + SOCK_DESTROY_TIME;
  add_timer(&sk->sk_timer);
 } else
  sock_put(sk);
}
