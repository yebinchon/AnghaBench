
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct sock {int (* sk_state_change ) (struct sock*) ;int sk_err; int sk_state; } ;


 int BT_DBG (char*,struct sock*,int ) ;
 int ETIMEDOUT ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 struct sock* from_timer (int ,struct timer_list*,int ) ;
 int sco_sock_kill (struct sock*) ;
 struct sock* sk ;
 int sk_timer ;
 int sock_put (struct sock*) ;
 int stub1 (struct sock*) ;

__attribute__((used)) static void sco_sock_timeout(struct timer_list *t)
{
 struct sock *sk = from_timer(sk, t, sk_timer);

 BT_DBG("sock %p state %d", sk, sk->sk_state);

 bh_lock_sock(sk);
 sk->sk_err = ETIMEDOUT;
 sk->sk_state_change(sk);
 bh_unlock_sock(sk);

 sco_sock_kill(sk);
 sock_put(sk);
}
