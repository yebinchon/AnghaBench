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
typedef  scalar_t__ u8 ;
struct rxrpc_call {int tx_hard_ack; int acks_lost_top; scalar_t__* rxtx_annotations; int /*<<< orphan*/  events; int /*<<< orphan*/  lock; } ;
typedef  int rxrpc_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  RXRPC_CALL_EV_RESEND ; 
 int RXRPC_RXTX_BUFF_MASK ; 
 scalar_t__ RXRPC_TX_ANNO_MASK ; 
 scalar_t__ RXRPC_TX_ANNO_RETRANS ; 
 scalar_t__ RXRPC_TX_ANNO_UNACK ; 
 scalar_t__ FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rxrpc_call*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rxrpc_call *call)
{
	rxrpc_seq_t top, bottom, seq;
	bool resend = false;

	FUNC3(&call->lock);

	bottom = call->tx_hard_ack + 1;
	top = call->acks_lost_top;
	if (FUNC0(bottom, top)) {
		for (seq = bottom; FUNC1(seq, top); seq++) {
			int ix = seq & RXRPC_RXTX_BUFF_MASK;
			u8 annotation = call->rxtx_annotations[ix];
			u8 anno_type = annotation & RXRPC_TX_ANNO_MASK;

			if (anno_type != RXRPC_TX_ANNO_UNACK)
				continue;
			annotation &= ~RXRPC_TX_ANNO_MASK;
			annotation |= RXRPC_TX_ANNO_RETRANS;
			call->rxtx_annotations[ix] = annotation;
			resend = true;
		}
	}

	FUNC4(&call->lock);

	if (resend && !FUNC5(RXRPC_CALL_EV_RESEND, &call->events))
		FUNC2(call);
}