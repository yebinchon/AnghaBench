
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int sk; } ;
struct rxrpc_call {int user_mutex; int notify_lock; scalar_t__ notify_rx; int usage; int debug_id; } ;


 int _enter (char*,int ,int ) ;
 int atomic_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rxrpc_call_put_kernel ;
 scalar_t__ rxrpc_dummy_notify_rx ;
 int rxrpc_put_call (struct rxrpc_call*,int ) ;
 int rxrpc_release_call (int ,struct rxrpc_call*) ;
 int rxrpc_sk (int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void rxrpc_kernel_end_call(struct socket *sock, struct rxrpc_call *call)
{
 _enter("%d{%d}", call->debug_id, atomic_read(&call->usage));

 mutex_lock(&call->user_mutex);
 rxrpc_release_call(rxrpc_sk(sock->sk), call);


 if (call->notify_rx) {
  spin_lock_bh(&call->notify_lock);
  call->notify_rx = rxrpc_dummy_notify_rx;
  spin_unlock_bh(&call->notify_lock);
 }

 mutex_unlock(&call->user_mutex);
 rxrpc_put_call(call, rxrpc_call_put_kernel);
}
