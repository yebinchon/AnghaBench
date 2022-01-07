
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;


 struct sock* from_timer (int ,struct timer_list*,int ) ;
 struct sock* sk ;
 int sk_timer ;
 int x25_destroy_socket_from_timer (struct sock*) ;

__attribute__((used)) static void x25_destroy_timer(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);

 x25_destroy_socket_from_timer(sk);
}
