
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int mark; int priority; } ;
struct TYPE_5__ {scalar_t__ sk_state; } ;
struct rxrpc_sock {int incoming_lock; int discard_new_call; TYPE_2__ sk; int (* notify_new_call ) (TYPE_2__*,struct rxrpc_call*,int ) ;} ;
struct TYPE_4__ {int seq; int serial; int callNumber; int cid; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {int dummy; } ;
struct rxrpc_connection {int state; int state_lock; int error; int abort_code; int events; } ;
struct rxrpc_call {scalar_t__ state; int debug_id; int state_lock; struct rxrpc_connection* conn; int user_call_ID; int user_mutex; } ;


 int BUG () ;
 int ESHUTDOWN ;
 scalar_t__ RXRPC_CALL_COMPLETE ;
 int RXRPC_CALL_REMOTELY_ABORTED ;
 scalar_t__ RXRPC_CALL_SERVER_ACCEPTING ;
 scalar_t__ RXRPC_CALL_SERVER_RECV_REQUEST ;
 scalar_t__ RXRPC_CLOSE ;
 int RXRPC_CONN_EV_CHALLENGE ;



 int RXRPC_CONN_SERVICE_CHALLENGING ;

 scalar_t__ RXRPC_SERVER_LISTEN_DISABLED ;
 int RXRPC_SKB_MARK_REJECT_ABORT ;
 int RXRPC_SKB_MARK_REJECT_BUSY ;
 int RX_INVALID_OPERATION ;
 int _enter (char*) ;
 int _leave (char*,...) ;
 int mutex_trylock (int *) ;
 int rxrpc_abort_call (char*,struct rxrpc_call*,int ,int ,int ) ;
 struct rxrpc_call* rxrpc_alloc_incoming_call (struct rxrpc_sock*,struct rxrpc_local*,struct rxrpc_peer*,struct rxrpc_connection*,struct sk_buff*) ;
 int rxrpc_call_put ;
 struct rxrpc_connection* rxrpc_find_connection_rcu (struct rxrpc_local*,struct sk_buff*,struct rxrpc_peer**) ;
 int rxrpc_incoming_call (struct rxrpc_sock*,struct rxrpc_call*,struct sk_buff*) ;
 int rxrpc_notify_socket (struct rxrpc_call*) ;
 int rxrpc_put_call (struct rxrpc_call*,int ) ;
 int rxrpc_queue_conn (struct rxrpc_connection*) ;
 int rxrpc_receive_incoming ;
 int rxrpc_set_call_completion (struct rxrpc_call*,int ,int ,int ) ;
 struct rxrpc_skb_priv* rxrpc_skb (struct sk_buff*) ;
 int set_bit (int ,int *) ;
 int sk_acceptq_added (TYPE_2__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (TYPE_2__*,struct rxrpc_call*,int ) ;
 int trace_rxrpc_abort (int ,char*,int ,int ,int ,int ,int ) ;
 int trace_rxrpc_receive (struct rxrpc_call*,int ,int ,int ) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct rxrpc_call *rxrpc_new_incoming_call(struct rxrpc_local *local,
        struct rxrpc_sock *rx,
        struct sk_buff *skb)
{
 struct rxrpc_skb_priv *sp = rxrpc_skb(skb);
 struct rxrpc_connection *conn;
 struct rxrpc_peer *peer = ((void*)0);
 struct rxrpc_call *call;

 _enter("");

 spin_lock(&rx->incoming_lock);
 if (rx->sk.sk_state == RXRPC_SERVER_LISTEN_DISABLED ||
     rx->sk.sk_state == RXRPC_CLOSE) {
  trace_rxrpc_abort(0, "CLS", sp->hdr.cid, sp->hdr.callNumber,
      sp->hdr.seq, RX_INVALID_OPERATION, ESHUTDOWN);
  skb->mark = RXRPC_SKB_MARK_REJECT_ABORT;
  skb->priority = RX_INVALID_OPERATION;
  _leave(" = NULL [close]");
  call = ((void*)0);
  goto out;
 }






 conn = rxrpc_find_connection_rcu(local, skb, &peer);

 call = rxrpc_alloc_incoming_call(rx, local, peer, conn, skb);
 if (!call) {
  skb->mark = RXRPC_SKB_MARK_REJECT_BUSY;
  _leave(" = NULL [busy]");
  call = ((void*)0);
  goto out;
 }

 trace_rxrpc_receive(call, rxrpc_receive_incoming,
       sp->hdr.serial, sp->hdr.seq);
 if (!mutex_trylock(&call->user_mutex))
  BUG();


 rxrpc_incoming_call(rx, call, skb);
 conn = call->conn;

 if (rx->notify_new_call)
  rx->notify_new_call(&rx->sk, call, call->user_call_ID);
 else
  sk_acceptq_added(&rx->sk);

 spin_lock(&conn->state_lock);
 switch (conn->state) {
 case 128:
  conn->state = RXRPC_CONN_SERVICE_CHALLENGING;
  set_bit(RXRPC_CONN_EV_CHALLENGE, &call->conn->events);
  rxrpc_queue_conn(call->conn);
  break;

 case 129:
  write_lock(&call->state_lock);
  if (call->state < RXRPC_CALL_COMPLETE) {
   if (rx->discard_new_call)
    call->state = RXRPC_CALL_SERVER_RECV_REQUEST;
   else
    call->state = RXRPC_CALL_SERVER_ACCEPTING;
  }
  write_unlock(&call->state_lock);
  break;

 case 130:
  rxrpc_set_call_completion(call, RXRPC_CALL_REMOTELY_ABORTED,
       conn->abort_code, conn->error);
  break;
 case 131:
  rxrpc_abort_call("CON", call, sp->hdr.seq,
     conn->abort_code, conn->error);
  break;
 default:
  BUG();
 }
 spin_unlock(&conn->state_lock);

 if (call->state == RXRPC_CALL_SERVER_ACCEPTING)
  rxrpc_notify_socket(call);






 rxrpc_put_call(call, rxrpc_call_put);

 _leave(" = %p{%d}", call, call->debug_id);
out:
 spin_unlock(&rx->incoming_lock);
 return call;
}
