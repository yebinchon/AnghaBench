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
struct rxrpc_call {scalar_t__ state; int* rxtx_annotations; int /*<<< orphan*/  lock; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 scalar_t__ RXRPC_CALL_COMPLETE ; 
 int /*<<< orphan*/  RXRPC_CALL_EV_RESEND ; 
 int RXRPC_TX_ANNO_LAST ; 
 int RXRPC_TX_ANNO_RETRANS ; 
 int /*<<< orphan*/  FUNC0 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct rxrpc_call *call, int ix)
{
	FUNC1(&call->lock);

	if (call->state < RXRPC_CALL_COMPLETE) {
		call->rxtx_annotations[ix] =
			(call->rxtx_annotations[ix] & RXRPC_TX_ANNO_LAST) |
			RXRPC_TX_ANNO_RETRANS;
		if (!FUNC3(RXRPC_CALL_EV_RESEND, &call->events))
			FUNC0(call);
	}

	FUNC2(&call->lock);
}