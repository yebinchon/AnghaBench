
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;


 struct sock* from_timer (int ,struct timer_list*,int ) ;
 int pr_err (char*) ;
 struct sock* sk ;
 int sk_timer ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void dccp_keepalive_timer(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);

 pr_err("dccp should not use a keepalive timer !\n");
 sock_put(sk);
}
