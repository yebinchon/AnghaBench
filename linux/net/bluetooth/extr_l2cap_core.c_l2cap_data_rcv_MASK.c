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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; } ;
struct l2cap_ctrl {scalar_t__ sar; scalar_t__ reqseq; scalar_t__ final; size_t txseq; scalar_t__ poll; size_t super; int /*<<< orphan*/  sframe; } ;
struct l2cap_chan {scalar_t__ fcs; scalar_t__ mps; scalar_t__ mode; scalar_t__ tx_state; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {struct l2cap_ctrl l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  L2CAP_EV_RECV_IFRAME ; 
 int /*<<< orphan*/  const L2CAP_EV_RECV_REJ ; 
 int /*<<< orphan*/  const L2CAP_EV_RECV_RNR ; 
 int /*<<< orphan*/  const L2CAP_EV_RECV_RR ; 
 int /*<<< orphan*/  const L2CAP_EV_RECV_SREJ ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_FCS_SIZE ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 scalar_t__ L2CAP_MODE_STREAMING ; 
 scalar_t__ L2CAP_SAR_START ; 
 scalar_t__ L2CAP_SDULEN_SIZE ; 
 scalar_t__ L2CAP_TX_STATE_WAIT_F ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct l2cap_chan*,struct sk_buff*) ; 
 int FUNC6 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct l2cap_chan *chan, struct sk_buff *skb)
{
	struct l2cap_ctrl *control = &FUNC3(skb)->l2cap;
	u16 len;
	u8 event;

	FUNC2(chan, skb);

	len = skb->len;

	/*
	 * We can just drop the corrupted I-frame here.
	 * Receiver will miss it and start proper recovery
	 * procedures and ask for retransmission.
	 */
	if (FUNC5(chan, skb))
		goto drop;

	if (!control->sframe && control->sar == L2CAP_SAR_START)
		len -= L2CAP_SDULEN_SIZE;

	if (chan->fcs == L2CAP_FCS_CRC16)
		len -= L2CAP_FCS_SIZE;

	if (len > chan->mps) {
		FUNC7(chan, ECONNRESET);
		goto drop;
	}

	if ((chan->mode == L2CAP_MODE_ERTM ||
	     chan->mode == L2CAP_MODE_STREAMING) && FUNC9(chan->data, skb))
		goto drop;

	if (!control->sframe) {
		int err;

		FUNC0("iframe sar %d, reqseq %d, final %d, txseq %d",
		       control->sar, control->reqseq, control->final,
		       control->txseq);

		/* Validate F-bit - F=0 always valid, F=1 only
		 * valid in TX WAIT_F
		 */
		if (control->final && chan->tx_state != L2CAP_TX_STATE_WAIT_F)
			goto drop;

		if (chan->mode != L2CAP_MODE_STREAMING) {
			event = L2CAP_EV_RECV_IFRAME;
			err = FUNC6(chan, control, skb, event);
		} else {
			err = FUNC8(chan, control, skb);
		}

		if (err)
			FUNC7(chan, ECONNRESET);
	} else {
		const u8 rx_func_to_event[4] = {
			L2CAP_EV_RECV_RR, L2CAP_EV_RECV_REJ,
			L2CAP_EV_RECV_RNR, L2CAP_EV_RECV_SREJ
		};

		/* Only I-frames are expected in streaming mode */
		if (chan->mode == L2CAP_MODE_STREAMING)
			goto drop;

		FUNC0("sframe reqseq %d, final %d, poll %d, super %d",
		       control->reqseq, control->final, control->poll,
		       control->super);

		if (len != 0) {
			FUNC1("Trailing bytes: %d in sframe", len);
			FUNC7(chan, ECONNRESET);
			goto drop;
		}

		/* Validate F and P bits */
		if (control->final && (control->poll ||
				       chan->tx_state != L2CAP_TX_STATE_WAIT_F))
			goto drop;

		event = rx_func_to_event[control->super];
		if (FUNC6(chan, control, skb, event))
			FUNC7(chan, ECONNRESET);
	}

	return 0;

drop:
	FUNC4(skb);
	return 0;
}