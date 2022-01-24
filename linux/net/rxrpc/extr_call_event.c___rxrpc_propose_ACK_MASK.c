#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  int u32 ;
struct rxrpc_call {size_t ackr_reason; int ackr_serial; int /*<<< orphan*/  ack_at; int /*<<< orphan*/  tx_backoff; TYPE_1__* peer; int /*<<< orphan*/  events; } ;
typedef  scalar_t__ s8 ;
typedef  enum rxrpc_propose_ack_trace { ____Placeholder_rxrpc_propose_ack_trace } rxrpc_propose_ack_trace ;
typedef  enum rxrpc_propose_ack_outcome { ____Placeholder_rxrpc_propose_ack_outcome } rxrpc_propose_ack_outcome ;
struct TYPE_2__ {scalar_t__ rtt_usage; int /*<<< orphan*/  rtt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  RXRPC_ACK_DELAY 130 
#define  RXRPC_ACK_IDLE 129 
 size_t RXRPC_ACK_PING ; 
#define  RXRPC_ACK_REQUESTED 128 
 int RXRPC_ACK_UPDATEABLE ; 
 int /*<<< orphan*/  RXRPC_CALL_EV_ACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned long jiffies ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__* rxrpc_ack_priority ; 
 unsigned long rxrpc_idle_ack_delay ; 
 int rxrpc_propose_ack_subsume ; 
 int rxrpc_propose_ack_update ; 
 int rxrpc_propose_ack_use ; 
 int /*<<< orphan*/  FUNC4 (struct rxrpc_call*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC6 (struct rxrpc_call*,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long rxrpc_requested_ack_delay ; 
 unsigned long rxrpc_soft_ack_delay ; 
 int /*<<< orphan*/  rxrpc_timer_set_for_ack ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct rxrpc_call*,int,size_t,int,int,int,int) ; 

__attribute__((used)) static void FUNC11(struct rxrpc_call *call, u8 ack_reason,
				u32 serial, bool immediate, bool background,
				enum rxrpc_propose_ack_trace why)
{
	enum rxrpc_propose_ack_outcome outcome = rxrpc_propose_ack_use;
	unsigned long expiry = rxrpc_soft_ack_delay;
	s8 prior = rxrpc_ack_priority[ack_reason];

	/* Pings are handled specially because we don't want to accidentally
	 * lose a ping response by subsuming it into a ping.
	 */
	if (ack_reason == RXRPC_ACK_PING) {
		FUNC4(call, immediate, background);
		goto trace;
	}

	/* Update DELAY, IDLE, REQUESTED and PING_RESPONSE ACK serial
	 * numbers, but we don't alter the timeout.
	 */
	FUNC2("prior %u %u vs %u %u",
	       ack_reason, prior,
	       call->ackr_reason, rxrpc_ack_priority[call->ackr_reason]);
	if (ack_reason == call->ackr_reason) {
		if (RXRPC_ACK_UPDATEABLE & (1 << ack_reason)) {
			outcome = rxrpc_propose_ack_update;
			call->ackr_serial = serial;
		}
		if (!immediate)
			goto trace;
	} else if (prior > rxrpc_ack_priority[call->ackr_reason]) {
		call->ackr_reason = ack_reason;
		call->ackr_serial = serial;
	} else {
		outcome = rxrpc_propose_ack_subsume;
	}

	switch (ack_reason) {
	case RXRPC_ACK_REQUESTED:
		if (rxrpc_requested_ack_delay < expiry)
			expiry = rxrpc_requested_ack_delay;
		if (serial == 1)
			immediate = false;
		break;

	case RXRPC_ACK_DELAY:
		if (rxrpc_soft_ack_delay < expiry)
			expiry = rxrpc_soft_ack_delay;
		break;

	case RXRPC_ACK_IDLE:
		if (rxrpc_idle_ack_delay < expiry)
			expiry = rxrpc_idle_ack_delay;
		break;

	default:
		immediate = true;
		break;
	}

	if (FUNC8(RXRPC_CALL_EV_ACK, &call->events)) {
		FUNC2("already scheduled");
	} else if (immediate || expiry == 0) {
		FUNC2("immediate ACK %lx", call->events);
		if (!FUNC7(RXRPC_CALL_EV_ACK, &call->events) &&
		    background)
			FUNC5(call);
	} else {
		unsigned long now = jiffies, ack_at;

		if (call->peer->rtt_usage > 0)
			ack_at = FUNC3(call->peer->rtt);
		else
			ack_at = expiry;

		ack_at += FUNC0(call->tx_backoff);
		ack_at += now;
		if (FUNC9(ack_at, call->ack_at)) {
			FUNC1(call->ack_at, ack_at);
			FUNC6(call, ack_at, now,
						rxrpc_timer_set_for_ack);
		}
	}

trace:
	FUNC10(call, why, ack_reason, serial, immediate,
				background, outcome);
}