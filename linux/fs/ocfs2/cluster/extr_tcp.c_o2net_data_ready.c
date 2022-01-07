
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_data_ready ) (struct sock*) ;int sk_callback_lock; struct o2net_sock_container* sk_user_data; } ;
struct o2net_sock_container {void (* sc_data_ready ) (struct sock*) ;int sc_rx_work; } ;


 int o2net_sc_queue_work (struct o2net_sock_container*,int *) ;
 int o2net_set_data_ready_time (struct o2net_sock_container*) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;
 int sclog (struct o2net_sock_container*,char*) ;

__attribute__((used)) static void o2net_data_ready(struct sock *sk)
{
 void (*ready)(struct sock *sk);
 struct o2net_sock_container *sc;

 read_lock_bh(&sk->sk_callback_lock);
 sc = sk->sk_user_data;
 if (sc) {
  sclog(sc, "data_ready hit\n");
  o2net_set_data_ready_time(sc);
  o2net_sc_queue_work(sc, &sc->sc_rx_work);
  ready = sc->sc_data_ready;
 } else {
  ready = sk->sk_data_ready;
 }
 read_unlock_bh(&sk->sk_callback_lock);

 ready(sk);
}
