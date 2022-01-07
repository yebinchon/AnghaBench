
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_callback_lock; int sk_state_change; int sk_data_ready; struct o2net_sock_container* sk_user_data; } ;
struct o2net_sock_container {int sc_state_change; int sc_data_ready; } ;


 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int o2net_unregister_callbacks(struct sock *sk,
              struct o2net_sock_container *sc)
{
 int ret = 0;

 write_lock_bh(&sk->sk_callback_lock);
 if (sk->sk_user_data == sc) {
  ret = 1;
  sk->sk_user_data = ((void*)0);
  sk->sk_data_ready = sc->sc_data_ready;
  sk->sk_state_change = sc->sc_state_change;
 }
 write_unlock_bh(&sk->sk_callback_lock);

 return ret;
}
