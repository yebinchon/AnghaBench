
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_topsrv {int awork; int rcv_wq; scalar_t__ listener; } ;
struct sock {int sk_callback_lock; struct tipc_topsrv* sk_user_data; } ;


 int queue_work (int ,int *) ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static void tipc_topsrv_listener_data_ready(struct sock *sk)
{
 struct tipc_topsrv *srv;

 read_lock_bh(&sk->sk_callback_lock);
 srv = sk->sk_user_data;
 if (srv->listener)
  queue_work(srv->rcv_wq, &srv->awork);
 read_unlock_bh(&sk->sk_callback_lock);
}
