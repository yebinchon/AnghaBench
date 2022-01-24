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
struct rxrpc_call {int tx_phase; int /*<<< orphan*/  flags; int /*<<< orphan*/  ack_at; int /*<<< orphan*/  resend_at; int /*<<< orphan*/  lock; scalar_t__ ackr_reason; int /*<<< orphan*/  tx_top; } ;
struct rxrpc_ack_summary {int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  rxrpc_seq_t ;

/* Variables and functions */
 unsigned long MAX_JIFFY_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXRPC_CALL_TX_LAST ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct rxrpc_call*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*,int /*<<< orphan*/ ,struct rxrpc_ack_summary*) ; 
 int /*<<< orphan*/  rxrpc_timer_init_for_reply ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rxrpc_call*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static bool FUNC9(struct rxrpc_call *call)
{
	struct rxrpc_ack_summary summary = { 0 };
	unsigned long now, timo;
	rxrpc_seq_t top = FUNC0(call->tx_top);

	if (call->ackr_reason) {
		FUNC5(&call->lock);
		call->ackr_reason = 0;
		FUNC6(&call->lock);
		now = jiffies;
		timo = now + MAX_JIFFY_OFFSET;
		FUNC1(call->resend_at, timo);
		FUNC1(call->ack_at, timo);
		FUNC8(call, rxrpc_timer_init_for_reply, now);
	}

	if (!FUNC7(RXRPC_CALL_TX_LAST, &call->flags)) {
		if (!FUNC4(call, top, &summary)) {
			FUNC3("TXL", call, top);
			return false;
		}
	}
	if (!FUNC2(call, true, "ETD"))
		return false;
	call->tx_phase = false;
	return true;
}