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
struct rxrpc_call {unsigned int state; int /*<<< orphan*/  tx_top; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  RXRPC_CALL_CLIENT_AWAIT_REPLY 130 
 unsigned int RXRPC_CALL_CLIENT_RECV_REPLY ; 
#define  RXRPC_CALL_CLIENT_SEND_REQUEST 129 
#define  RXRPC_CALL_SERVER_AWAIT_ACK 128 
 int /*<<< orphan*/  RXRPC_CALL_TX_LAST ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rxrpc_call_states ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_transmit_await_reply ; 
 int /*<<< orphan*/  rxrpc_transmit_end ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct rxrpc_call *call, bool reply_begun,
			       const char *abort_why)
{
	unsigned int state;

	FUNC0(FUNC6(RXRPC_CALL_TX_LAST, &call->flags));

	FUNC8(&call->state_lock);

	state = call->state;
	switch (state) {
	case RXRPC_CALL_CLIENT_SEND_REQUEST:
	case RXRPC_CALL_CLIENT_AWAIT_REPLY:
		if (reply_begun)
			call->state = state = RXRPC_CALL_CLIENT_RECV_REPLY;
		else
			call->state = state = RXRPC_CALL_CLIENT_AWAIT_REPLY;
		break;

	case RXRPC_CALL_SERVER_AWAIT_ACK:
		FUNC1(call);
		FUNC4(call);
		state = call->state;
		break;

	default:
		goto bad_state;
	}

	FUNC9(&call->state_lock);
	if (state == RXRPC_CALL_CLIENT_AWAIT_REPLY)
		FUNC7(call, rxrpc_transmit_await_reply);
	else
		FUNC7(call, rxrpc_transmit_end);
	FUNC2(" = ok");
	return true;

bad_state:
	FUNC9(&call->state_lock);
	FUNC3("end_tx %s", rxrpc_call_states[call->state]);
	FUNC5(abort_why, call, call->tx_top);
	return false;
}