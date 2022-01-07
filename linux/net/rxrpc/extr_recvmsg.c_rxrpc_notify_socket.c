
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; int (* sk_data_ready ) (struct sock*) ;} ;
struct rxrpc_sock {int recvmsg_lock; int recvmsg_q; struct sock sk; } ;
struct rxrpc_call {int recvmsg_link; int notify_lock; int user_call_ID; int (* notify_rx ) (struct sock*,struct rxrpc_call*,int ) ;int socket; int debug_id; } ;


 scalar_t__ RXRPC_CLOSE ;
 int SOCK_DEAD ;
 int _debug (char*,int (*) (struct sock*)) ;
 int _enter (char*,int ) ;
 int _leave (char*) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 struct rxrpc_sock* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rxrpc_call_got ;
 int rxrpc_get_call (struct rxrpc_call*,int ) ;
 int sock_flag (struct sock*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct sock*,struct rxrpc_call*,int ) ;
 int stub2 (struct sock*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void rxrpc_notify_socket(struct rxrpc_call *call)
{
 struct rxrpc_sock *rx;
 struct sock *sk;

 _enter("%d", call->debug_id);

 if (!list_empty(&call->recvmsg_link))
  return;

 rcu_read_lock();

 rx = rcu_dereference(call->socket);
 sk = &rx->sk;
 if (rx && sk->sk_state < RXRPC_CLOSE) {
  if (call->notify_rx) {
   spin_lock_bh(&call->notify_lock);
   call->notify_rx(sk, call, call->user_call_ID);
   spin_unlock_bh(&call->notify_lock);
  } else {
   write_lock_bh(&rx->recvmsg_lock);
   if (list_empty(&call->recvmsg_link)) {
    rxrpc_get_call(call, rxrpc_call_got);
    list_add_tail(&call->recvmsg_link, &rx->recvmsg_q);
   }
   write_unlock_bh(&rx->recvmsg_lock);

   if (!sock_flag(sk, SOCK_DEAD)) {
    _debug("call %ps", sk->sk_data_ready);
    sk->sk_data_ready(sk);
   }
  }
 }

 rcu_read_unlock();
 _leave("");
}
