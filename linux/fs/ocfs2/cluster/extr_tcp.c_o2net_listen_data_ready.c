
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {void (* sk_user_data ) (struct sock*) ;void (* sk_data_ready ) (struct sock*) ;scalar_t__ sk_state; int sk_callback_lock; } ;


 scalar_t__ TCP_LISTEN ;
 int o2net_listen_work ;
 int o2net_wq ;
 int queue_work (int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void o2net_listen_data_ready(struct sock *sk)
{
 void (*ready)(struct sock *sk);

 read_lock_bh(&sk->sk_callback_lock);
 ready = sk->sk_user_data;
 if (ready == ((void*)0)) {
  ready = sk->sk_data_ready;
  goto out;
 }
 if (sk->sk_state == TCP_LISTEN) {
  queue_work(o2net_wq, &o2net_listen_work);
 } else {
  ready = ((void*)0);
 }

out:
 read_unlock_bh(&sk->sk_callback_lock);
 if (ready != ((void*)0))
  ready(sk);
}
