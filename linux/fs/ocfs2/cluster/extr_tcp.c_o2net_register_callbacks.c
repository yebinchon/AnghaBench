
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_data_ready; scalar_t__ sk_user_data; int sk_callback_lock; int sk_state_change; } ;
struct o2net_sock_container {scalar_t__ sc_data_ready; int sc_send_lock; int sc_state_change; } ;


 int BUG_ON (int ) ;
 int mutex_init (int *) ;
 scalar_t__ o2net_data_ready ;
 scalar_t__ o2net_listen_data_ready ;
 int o2net_state_change ;
 int sc_get (struct o2net_sock_container*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void o2net_register_callbacks(struct sock *sk,
         struct o2net_sock_container *sc)
{
 write_lock_bh(&sk->sk_callback_lock);


 if (sk->sk_data_ready == o2net_listen_data_ready) {
  sk->sk_data_ready = sk->sk_user_data;
  sk->sk_user_data = ((void*)0);
 }

 BUG_ON(sk->sk_user_data != ((void*)0));
 sk->sk_user_data = sc;
 sc_get(sc);

 sc->sc_data_ready = sk->sk_data_ready;
 sc->sc_state_change = sk->sk_state_change;
 sk->sk_data_ready = o2net_data_ready;
 sk->sk_state_change = o2net_state_change;

 mutex_init(&sc->sc_send_lock);

 write_unlock_bh(&sk->sk_callback_lock);
}
