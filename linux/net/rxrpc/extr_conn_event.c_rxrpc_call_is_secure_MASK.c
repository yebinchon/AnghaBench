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
struct rxrpc_call {scalar_t__ state; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CALL_SERVER_ACCEPTING ; 
 scalar_t__ RXRPC_CALL_SERVER_SECURING ; 
 int /*<<< orphan*/  FUNC0 (char*,struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct rxrpc_call *call)
{
	FUNC0("%p", call);
	if (call) {
		FUNC2(&call->state_lock);
		if (call->state == RXRPC_CALL_SERVER_SECURING) {
			call->state = RXRPC_CALL_SERVER_ACCEPTING;
			FUNC1(call);
		}
		FUNC3(&call->state_lock);
	}
}