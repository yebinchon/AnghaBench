#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rxrpc_sock {int /*<<< orphan*/  (* discard_new_call ) (struct rxrpc_call*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  incoming_lock; struct rxrpc_peer* backlog; int /*<<< orphan*/  sk; } ;
struct rxrpc_peer {unsigned int peer_backlog_head; unsigned int peer_backlog_tail; unsigned int conn_backlog_head; unsigned int conn_backlog_tail; unsigned int call_backlog_head; unsigned int call_backlog_tail; struct rxrpc_call** call_backlog; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  link; struct rxrpc_peer** conn_backlog; struct rxrpc_peer** peer_backlog; } ;
struct rxrpc_net {int /*<<< orphan*/  nr_conns; int /*<<< orphan*/  conn_lock; } ;
struct rxrpc_connection {unsigned int peer_backlog_head; unsigned int peer_backlog_tail; unsigned int conn_backlog_head; unsigned int conn_backlog_tail; unsigned int call_backlog_head; unsigned int call_backlog_tail; struct rxrpc_call** call_backlog; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  link; struct rxrpc_connection** conn_backlog; struct rxrpc_connection** peer_backlog; } ;
struct rxrpc_call {int /*<<< orphan*/  user_call_ID; int /*<<< orphan*/  socket; } ;
struct rxrpc_backlog {unsigned int peer_backlog_head; unsigned int peer_backlog_tail; unsigned int conn_backlog_head; unsigned int conn_backlog_tail; unsigned int call_backlog_head; unsigned int call_backlog_tail; struct rxrpc_call** call_backlog; int /*<<< orphan*/  proc_link; int /*<<< orphan*/  link; struct rxrpc_backlog** conn_backlog; struct rxrpc_backlog** peer_backlog; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int,unsigned int,unsigned int) ; 
 unsigned int RXRPC_BACKLOG_MAX ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_peer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rxrpc_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  rxrpc_call_put ; 
 int /*<<< orphan*/  rxrpc_call_put_kernel ; 
 struct rxrpc_net* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_sock*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

void FUNC17(struct rxrpc_sock *rx)
{
	struct rxrpc_backlog *b = rx->backlog;
	struct rxrpc_net *rxnet = FUNC7(FUNC10(&rx->sk));
	unsigned int size = RXRPC_BACKLOG_MAX, head, tail;

	if (!b)
		return;
	rx->backlog = NULL;

	/* Make sure that there aren't any incoming calls in progress before we
	 * clear the preallocation buffers.
	 */
	FUNC11(&rx->incoming_lock);
	FUNC12(&rx->incoming_lock);

	head = b->peer_backlog_head;
	tail = b->peer_backlog_tail;
	while (FUNC0(head, tail, size) > 0) {
		struct rxrpc_peer *peer = b->peer_backlog[tail];
		FUNC3(peer);
		tail = (tail + 1) & (size - 1);
	}

	head = b->conn_backlog_head;
	tail = b->conn_backlog_tail;
	while (FUNC0(head, tail, size) > 0) {
		struct rxrpc_connection *conn = b->conn_backlog[tail];
		FUNC15(&rxnet->conn_lock);
		FUNC4(&conn->link);
		FUNC4(&conn->proc_link);
		FUNC16(&rxnet->conn_lock);
		FUNC3(conn);
		if (FUNC2(&rxnet->nr_conns))
			FUNC14(&rxnet->nr_conns);
		tail = (tail + 1) & (size - 1);
	}

	head = b->call_backlog_head;
	tail = b->call_backlog_tail;
	while (FUNC0(head, tail, size) > 0) {
		struct rxrpc_call *call = b->call_backlog[tail];
		FUNC5(call->socket, rx);
		if (rx->discard_new_call) {
			FUNC1("discard %lx", call->user_call_ID);
			rx->discard_new_call(call, call->user_call_ID);
			FUNC8(call, rxrpc_call_put_kernel);
		}
		FUNC6(call);
		FUNC9(rx, call);
		FUNC8(call, rxrpc_call_put);
		tail = (tail + 1) & (size - 1);
	}

	FUNC3(b);
}