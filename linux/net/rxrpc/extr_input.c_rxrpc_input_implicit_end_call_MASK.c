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
struct rxrpc_sock {int /*<<< orphan*/  incoming_lock; } ;
struct rxrpc_connection {int dummy; } ;
struct rxrpc_call {int /*<<< orphan*/  events; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESHUTDOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  RXRPC_CALL_COMPLETE 129 
 int /*<<< orphan*/  RXRPC_CALL_EV_ABORT ; 
#define  RXRPC_CALL_SERVER_AWAIT_ACK 128 
 int /*<<< orphan*/  RX_CALL_DEAD ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_connection*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct rxrpc_call*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_call*) ; 

__attribute__((used)) static void FUNC10(struct rxrpc_sock *rx,
					  struct rxrpc_connection *conn,
					  struct rxrpc_call *call)
{
	switch (FUNC0(call->state)) {
	case RXRPC_CALL_SERVER_AWAIT_ACK:
		FUNC3(call);
		/* Fall through */
	case RXRPC_CALL_COMPLETE:
		break;
	default:
		if (FUNC2("IMP", call, 0, RX_CALL_DEAD, -ESHUTDOWN)) {
			FUNC6(RXRPC_CALL_EV_ABORT, &call->events);
			FUNC5(call);
		}
		FUNC9(call);
		break;
	}

	FUNC7(&rx->incoming_lock);
	FUNC1(conn, call);
	FUNC8(&rx->incoming_lock);
	FUNC4(call);
}