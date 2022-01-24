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
struct socket {int /*<<< orphan*/  sk; } ;
struct rxrpc_call {int /*<<< orphan*/  user_mutex; int /*<<< orphan*/  notify_lock; scalar_t__ notify_rx; int /*<<< orphan*/  usage; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxrpc_call_put_kernel ; 
 scalar_t__ rxrpc_dummy_notify_rx ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct socket *sock, struct rxrpc_call *call)
{
	FUNC0("%d{%d}", call->debug_id, FUNC1(&call->usage));

	FUNC2(&call->user_mutex);
	FUNC5(FUNC6(sock->sk), call);

	/* Make sure we're not going to call back into a kernel service */
	if (call->notify_rx) {
		FUNC7(&call->notify_lock);
		call->notify_rx = rxrpc_dummy_notify_rx;
		FUNC8(&call->notify_lock);
	}

	FUNC3(&call->user_mutex);
	FUNC4(call, rxrpc_call_put_kernel);
}