
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int dummy; } ;


 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 int nr_destroy_socket (struct sock*) ;
 struct sock* sk ;
 int sk_timer ;
 int sock_hold (struct sock*) ;
 int sock_put (struct sock*) ;

__attribute__((used)) static void nr_destroy_timer(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);
 bh_lock_sock(sk);
 sock_hold(sk);
 nr_destroy_socket(sk);
 bh_unlock_sock(sk);
 sock_put(sk);
}
