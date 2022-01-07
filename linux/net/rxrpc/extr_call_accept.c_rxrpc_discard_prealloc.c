
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_sock {int (* discard_new_call ) (struct rxrpc_call*,int ) ;int incoming_lock; struct rxrpc_peer* backlog; int sk; } ;
struct rxrpc_peer {unsigned int peer_backlog_head; unsigned int peer_backlog_tail; unsigned int conn_backlog_head; unsigned int conn_backlog_tail; unsigned int call_backlog_head; unsigned int call_backlog_tail; struct rxrpc_call** call_backlog; int proc_link; int link; struct rxrpc_peer** conn_backlog; struct rxrpc_peer** peer_backlog; } ;
struct rxrpc_net {int nr_conns; int conn_lock; } ;
struct rxrpc_connection {unsigned int peer_backlog_head; unsigned int peer_backlog_tail; unsigned int conn_backlog_head; unsigned int conn_backlog_tail; unsigned int call_backlog_head; unsigned int call_backlog_tail; struct rxrpc_call** call_backlog; int proc_link; int link; struct rxrpc_connection** conn_backlog; struct rxrpc_connection** peer_backlog; } ;
struct rxrpc_call {int user_call_ID; int socket; } ;
struct rxrpc_backlog {unsigned int peer_backlog_head; unsigned int peer_backlog_tail; unsigned int conn_backlog_head; unsigned int conn_backlog_tail; unsigned int call_backlog_head; unsigned int call_backlog_tail; struct rxrpc_call** call_backlog; int proc_link; int link; struct rxrpc_backlog** conn_backlog; struct rxrpc_backlog** peer_backlog; } ;


 scalar_t__ CIRC_CNT (unsigned int,unsigned int,unsigned int) ;
 unsigned int RXRPC_BACKLOG_MAX ;
 int _debug (char*,int ) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct rxrpc_peer*) ;
 int list_del (int *) ;
 int rcu_assign_pointer (int ,struct rxrpc_sock*) ;
 int rxrpc_call_completed (struct rxrpc_call*) ;
 int rxrpc_call_put ;
 int rxrpc_call_put_kernel ;
 struct rxrpc_net* rxrpc_net (int ) ;
 int rxrpc_put_call (struct rxrpc_call*,int ) ;
 int rxrpc_release_call (struct rxrpc_sock*,struct rxrpc_call*) ;
 int sock_net (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct rxrpc_call*,int ) ;
 int wake_up_var (int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void rxrpc_discard_prealloc(struct rxrpc_sock *rx)
{
 struct rxrpc_backlog *b = rx->backlog;
 struct rxrpc_net *rxnet = rxrpc_net(sock_net(&rx->sk));
 unsigned int size = RXRPC_BACKLOG_MAX, head, tail;

 if (!b)
  return;
 rx->backlog = ((void*)0);




 spin_lock_bh(&rx->incoming_lock);
 spin_unlock_bh(&rx->incoming_lock);

 head = b->peer_backlog_head;
 tail = b->peer_backlog_tail;
 while (CIRC_CNT(head, tail, size) > 0) {
  struct rxrpc_peer *peer = b->peer_backlog[tail];
  kfree(peer);
  tail = (tail + 1) & (size - 1);
 }

 head = b->conn_backlog_head;
 tail = b->conn_backlog_tail;
 while (CIRC_CNT(head, tail, size) > 0) {
  struct rxrpc_connection *conn = b->conn_backlog[tail];
  write_lock(&rxnet->conn_lock);
  list_del(&conn->link);
  list_del(&conn->proc_link);
  write_unlock(&rxnet->conn_lock);
  kfree(conn);
  if (atomic_dec_and_test(&rxnet->nr_conns))
   wake_up_var(&rxnet->nr_conns);
  tail = (tail + 1) & (size - 1);
 }

 head = b->call_backlog_head;
 tail = b->call_backlog_tail;
 while (CIRC_CNT(head, tail, size) > 0) {
  struct rxrpc_call *call = b->call_backlog[tail];
  rcu_assign_pointer(call->socket, rx);
  if (rx->discard_new_call) {
   _debug("discard %lx", call->user_call_ID);
   rx->discard_new_call(call, call->user_call_ID);
   rxrpc_put_call(call, rxrpc_call_put_kernel);
  }
  rxrpc_call_completed(call);
  rxrpc_release_call(rx, call);
  rxrpc_put_call(call, rxrpc_call_put);
  tail = (tail + 1) & (size - 1);
 }

 kfree(b);
}
