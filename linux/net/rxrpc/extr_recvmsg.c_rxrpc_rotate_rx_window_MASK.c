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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ serial; } ;
struct rxrpc_skb_priv {int nr_subpackets; int rx_flags; TYPE_1__ hdr; } ;
struct rxrpc_call {int rx_hard_ack; int* rxtx_annotations; scalar_t__ ackr_reason; scalar_t__ ackr_consumed; scalar_t__ ackr_seen; struct sk_buff** rxtx_buffer; int /*<<< orphan*/  rx_top; int /*<<< orphan*/  debug_id; } ;
typedef  scalar_t__ rxrpc_serial_t ;
typedef  int rxrpc_seq_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RXRPC_ACK_DELAY ; 
 int RXRPC_RXTX_BUFF_MASK ; 
 int RXRPC_RX_ANNO_SUBPACKET ; 
 int RXRPC_SKB_INCL_LAST ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rxrpc_call*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rxrpc_call*,scalar_t__,scalar_t__,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rxrpc_propose_ack_rotate_rx ; 
 int /*<<< orphan*/  rxrpc_receive_rotate ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rxrpc_call*,int,int /*<<< orphan*/ *) ; 
 struct rxrpc_skb_priv* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  rxrpc_skb_freed ; 
 int /*<<< orphan*/  rxrpc_skb_rotated ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rxrpc_call*,int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void FUNC14(struct rxrpc_call *call)
{
	struct rxrpc_skb_priv *sp;
	struct sk_buff *skb;
	rxrpc_serial_t serial;
	rxrpc_seq_t hard_ack, top;
	bool last = false;
	u8 subpacket;
	int ix;

	FUNC1("%d", call->debug_id);

	hard_ack = call->rx_hard_ack;
	top = FUNC11(&call->rx_top);
	FUNC0(FUNC4(hard_ack, top));

	hard_ack++;
	ix = hard_ack & RXRPC_RXTX_BUFF_MASK;
	skb = call->rxtx_buffer[ix];
	FUNC8(skb, rxrpc_skb_rotated);
	sp = FUNC10(skb);

	subpacket = call->rxtx_annotations[ix] & RXRPC_RX_ANNO_SUBPACKET;
	serial = sp->hdr.serial + subpacket;

	if (subpacket == sp->nr_subpackets - 1 &&
	    sp->rx_flags & RXRPC_SKB_INCL_LAST)
		last = true;

	call->rxtx_buffer[ix] = NULL;
	call->rxtx_annotations[ix] = 0;
	/* Barrier against rxrpc_input_data(). */
	FUNC12(&call->rx_hard_ack, hard_ack);

	FUNC6(skb, rxrpc_skb_freed);

	FUNC13(call, rxrpc_receive_rotate, serial, hard_ack);
	if (last) {
		FUNC5(call, serial);
	} else {
		/* Check to see if there's an ACK that needs sending. */
		if (FUNC3(hard_ack, call->ackr_consumed + 2) ||
		    FUNC3(top, call->ackr_seen + 2) ||
		    (hard_ack == top && FUNC2(hard_ack, call->ackr_consumed)))
			FUNC7(call, RXRPC_ACK_DELAY, serial,
					  true, true,
					  rxrpc_propose_ack_rotate_rx);
		if (call->ackr_reason && call->ackr_reason != RXRPC_ACK_DELAY)
			FUNC9(call, false, NULL);
	}
}