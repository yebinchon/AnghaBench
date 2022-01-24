#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int /*<<< orphan*/  mark; int /*<<< orphan*/  priority; } ;
struct TYPE_5__ {scalar_t__ sk_state; } ;
struct rxrpc_sock {int /*<<< orphan*/  incoming_lock; int /*<<< orphan*/  discard_new_call; TYPE_2__ sk; int /*<<< orphan*/  (* notify_new_call ) (TYPE_2__*,struct rxrpc_call*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  serial; int /*<<< orphan*/  callNumber; int /*<<< orphan*/  cid; } ;
struct rxrpc_skb_priv {TYPE_1__ hdr; } ;
struct rxrpc_peer {int dummy; } ;
struct rxrpc_local {int dummy; } ;
struct rxrpc_connection {int state; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  error; int /*<<< orphan*/  abort_code; int /*<<< orphan*/  events; } ;
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  debug_id; int /*<<< orphan*/  state_lock; struct rxrpc_connection* conn; int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  user_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ESHUTDOWN ; 
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int /*<<< orphan*/  RXRPC_CALL_REMOTELY_ABORTED ; 
 scalar_t__ RXRPC_CALL_SERVER_ACCEPTING ; 
 scalar_t__ RXRPC_CALL_SERVER_RECV_REQUEST ; 
 scalar_t__ RXRPC_CLOSE ; 
 int /*<<< orphan*/  RXRPC_CONN_EV_CHALLENGE ; 
#define  RXRPC_CONN_LOCALLY_ABORTED 131 
#define  RXRPC_CONN_REMOTELY_ABORTED 130 
#define  RXRPC_CONN_SERVICE 129 
 int RXRPC_CONN_SERVICE_CHALLENGING ; 
#define  RXRPC_CONN_SERVICE_UNSECURED 128 
 scalar_t__ RXRPC_SERVER_LISTEN_DISABLED ; 
 int /*<<< orphan*/  RXRPC_SKB_MARK_REJECT_ABORT ; 
 int /*<<< orphan*/  RXRPC_SKB_MARK_REJECT_BUSY ; 
 int /*<<< orphan*/  RX_INVALID_OPERATION ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rxrpc_call* FUNC5 (struct rxrpc_sock*,struct rxrpc_local*,struct rxrpc_peer*,struct rxrpc_connection*,struct sk_buff*) ; 
 int /*<<< orphan*/  rxrpc_call_put ; 
 struct rxrpc_connection* FUNC6 (struct rxrpc_local*,struct sk_buff*,struct rxrpc_peer**) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_sock*,struct rxrpc_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rxrpc_connection*) ; 
 int /*<<< orphan*/  rxrpc_receive_incoming ; 
 int /*<<< orphan*/  FUNC11 (struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rxrpc_skb_priv* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

struct rxrpc_call *FUNC22(struct rxrpc_local *local,
					   struct rxrpc_sock *rx,
					   struct sk_buff *skb)
{
	struct rxrpc_skb_priv *sp = FUNC12(skb);
	struct rxrpc_connection *conn;
	struct rxrpc_peer *peer = NULL;
	struct rxrpc_call *call;

	FUNC1("");

	FUNC15(&rx->incoming_lock);
	if (rx->sk.sk_state == RXRPC_SERVER_LISTEN_DISABLED ||
	    rx->sk.sk_state == RXRPC_CLOSE) {
		FUNC18(0, "CLS", sp->hdr.cid, sp->hdr.callNumber,
				  sp->hdr.seq, RX_INVALID_OPERATION, ESHUTDOWN);
		skb->mark = RXRPC_SKB_MARK_REJECT_ABORT;
		skb->priority = RX_INVALID_OPERATION;
		FUNC2(" = NULL [close]");
		call = NULL;
		goto out;
	}

	/* The peer, connection and call may all have sprung into existence due
	 * to a duplicate packet being handled on another CPU in parallel, so
	 * we have to recheck the routing.  However, we're now holding
	 * rx->incoming_lock, so the values should remain stable.
	 */
	conn = FUNC6(local, skb, &peer);

	call = FUNC5(rx, local, peer, conn, skb);
	if (!call) {
		skb->mark = RXRPC_SKB_MARK_REJECT_BUSY;
		FUNC2(" = NULL [busy]");
		call = NULL;
		goto out;
	}

	FUNC19(call, rxrpc_receive_incoming,
			    sp->hdr.serial, sp->hdr.seq);

	/* Lock the call to prevent rxrpc_kernel_send/recv_data() and
	 * sendmsg()/recvmsg() inconveniently stealing the mutex once the
	 * notification is generated.
	 *
	 * The BUG should never happen because the kernel should be well
	 * behaved enough not to access the call before the first notification
	 * event and userspace is prevented from doing so until the state is
	 * appropriate.
	 */
	if (!FUNC3(&call->user_mutex))
		FUNC0();

	/* Make the call live. */
	FUNC7(rx, call, skb);
	conn = call->conn;

	if (rx->notify_new_call)
		rx->notify_new_call(&rx->sk, call, call->user_call_ID);
	else
		FUNC14(&rx->sk);

	FUNC15(&conn->state_lock);
	switch (conn->state) {
	case RXRPC_CONN_SERVICE_UNSECURED:
		conn->state = RXRPC_CONN_SERVICE_CHALLENGING;
		FUNC13(RXRPC_CONN_EV_CHALLENGE, &call->conn->events);
		FUNC10(call->conn);
		break;

	case RXRPC_CONN_SERVICE:
		FUNC20(&call->state_lock);
		if (call->state < RXRPC_CALL_COMPLETE) {
			if (rx->discard_new_call)
				call->state = RXRPC_CALL_SERVER_RECV_REQUEST;
			else
				call->state = RXRPC_CALL_SERVER_ACCEPTING;
		}
		FUNC21(&call->state_lock);
		break;

	case RXRPC_CONN_REMOTELY_ABORTED:
		FUNC11(call, RXRPC_CALL_REMOTELY_ABORTED,
					  conn->abort_code, conn->error);
		break;
	case RXRPC_CONN_LOCALLY_ABORTED:
		FUNC4("CON", call, sp->hdr.seq,
				 conn->abort_code, conn->error);
		break;
	default:
		FUNC0();
	}
	FUNC16(&conn->state_lock);

	if (call->state == RXRPC_CALL_SERVER_ACCEPTING)
		FUNC8(call);

	/* We have to discard the prealloc queue's ref here and rely on a
	 * combination of the RCU read lock and refs held either by the socket
	 * (recvmsg queue, to-be-accepted queue or user ID tree) or the kernel
	 * service to prevent the call from being deallocated too early.
	 */
	FUNC9(call, rxrpc_call_put);

	FUNC2(" = %p{%d}", call, call->debug_id);
out:
	FUNC16(&rx->incoming_lock);
	return call;
}