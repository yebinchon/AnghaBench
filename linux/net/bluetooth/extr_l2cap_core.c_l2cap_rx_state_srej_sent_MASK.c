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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int sframe; int /*<<< orphan*/  reqseq; int /*<<< orphan*/  super; int /*<<< orphan*/  poll; int /*<<< orphan*/  final; int /*<<< orphan*/  txseq; } ;
struct l2cap_chan {int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  unacked_frames; int /*<<< orphan*/  srej_q; int /*<<< orphan*/  srej_list; int /*<<< orphan*/  expected_tx_seq; } ;
typedef  int /*<<< orphan*/  rr_control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 int /*<<< orphan*/  CONN_REJ_ACT ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int /*<<< orphan*/  ECONNRESET ; 
#define  L2CAP_EV_RECV_IFRAME 140 
#define  L2CAP_EV_RECV_REJ 139 
#define  L2CAP_EV_RECV_RNR 138 
#define  L2CAP_EV_RECV_RR 137 
#define  L2CAP_EV_RECV_SREJ 136 
 int /*<<< orphan*/  L2CAP_SUPER_RR ; 
#define  L2CAP_TXSEQ_DUPLICATE 135 
#define  L2CAP_TXSEQ_DUPLICATE_SREJ 134 
#define  L2CAP_TXSEQ_EXPECTED 133 
#define  L2CAP_TXSEQ_EXPECTED_SREJ 132 
#define  L2CAP_TXSEQ_INVALID 131 
#define  L2CAP_TXSEQ_INVALID_IGNORE 130 
#define  L2CAP_TXSEQ_UNEXPECTED 129 
#define  L2CAP_TXSEQ_UNEXPECTED_SREJ 128 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int FUNC11 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct l2cap_ctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24(struct l2cap_chan *chan,
				    struct l2cap_ctrl *control,
				    struct sk_buff *skb, u8 event)
{
	int err = 0;
	u16 txseq = control->txseq;
	bool skb_in_use = false;

	FUNC0("chan %p, control %p, skb %p, event %d", chan, control, skb,
	       event);

	switch (event) {
	case L2CAP_EV_RECV_IFRAME:
		switch (FUNC5(chan, txseq)) {
		case L2CAP_TXSEQ_EXPECTED:
			/* Keep frame for reassembly later */
			FUNC9(chan, control);
			FUNC22(&chan->srej_q, skb);
			skb_in_use = true;
			FUNC0("Queued %p (queue len %d)", skb,
			       FUNC21(&chan->srej_q));

			chan->expected_tx_seq = FUNC1(chan, txseq);
			break;
		case L2CAP_TXSEQ_EXPECTED_SREJ:
			FUNC18(&chan->srej_list);

			FUNC9(chan, control);
			FUNC22(&chan->srej_q, skb);
			skb_in_use = true;
			FUNC0("Queued %p (queue len %d)", skb,
			       FUNC21(&chan->srej_q));

			err = FUNC11(chan);
			if (err)
				break;

			break;
		case L2CAP_TXSEQ_UNEXPECTED:
			/* Got a frame that can't be reassembled yet.
			 * Save it for later, and send SREJs to cover
			 * the missing frames.
			 */
			FUNC22(&chan->srej_q, skb);
			skb_in_use = true;
			FUNC0("Queued %p (queue len %d)", skb,
			       FUNC21(&chan->srej_q));

			FUNC9(chan, control);
			FUNC15(chan, control->txseq);
			break;
		case L2CAP_TXSEQ_UNEXPECTED_SREJ:
			/* This frame was requested with an SREJ, but
			 * some expected retransmitted frames are
			 * missing.  Request retransmission of missing
			 * SREJ'd frames.
			 */
			FUNC22(&chan->srej_q, skb);
			skb_in_use = true;
			FUNC0("Queued %p (queue len %d)", skb,
			       FUNC21(&chan->srej_q));

			FUNC9(chan, control);
			FUNC16(chan, control->txseq);
			break;
		case L2CAP_TXSEQ_DUPLICATE_SREJ:
			/* We've already queued this frame.  Drop this copy. */
			FUNC9(chan, control);
			break;
		case L2CAP_TXSEQ_DUPLICATE:
			/* Expecting a later sequence number, so this frame
			 * was already received.  Ignore it completely.
			 */
			break;
		case L2CAP_TXSEQ_INVALID_IGNORE:
			break;
		case L2CAP_TXSEQ_INVALID:
		default:
			FUNC13(chan, ECONNRESET);
			break;
		}
		break;
	case L2CAP_EV_RECV_RR:
		FUNC9(chan, control);
		if (control->final) {
			FUNC3(CONN_REMOTE_BUSY, &chan->conn_state);

			if (!FUNC23(CONN_REJ_ACT,
						&chan->conn_state)) {
				control->final = 0;
				FUNC10(chan, control);
			}

			FUNC6(chan);
		} else if (control->poll) {
			if (FUNC23(CONN_REMOTE_BUSY,
					       &chan->conn_state) &&
			    chan->unacked_frames) {
				FUNC2(chan);
			}

			FUNC20(CONN_SEND_FBIT, &chan->conn_state);
			FUNC17(chan);
		} else {
			if (FUNC23(CONN_REMOTE_BUSY,
					       &chan->conn_state) &&
			    chan->unacked_frames)
				FUNC2(chan);

			FUNC12(chan);
		}
		break;
	case L2CAP_EV_RECV_RNR:
		FUNC20(CONN_REMOTE_BUSY, &chan->conn_state);
		FUNC9(chan, control);
		if (control->poll) {
			FUNC17(chan);
		} else {
			struct l2cap_ctrl rr_control;
			FUNC19(&rr_control, 0, sizeof(rr_control));
			rr_control.sframe = 1;
			rr_control.super = L2CAP_SUPER_RR;
			rr_control.reqseq = chan->buffer_seq;
			FUNC14(chan, &rr_control);
		}

		break;
	case L2CAP_EV_RECV_REJ:
		FUNC7(chan, control);
		break;
	case L2CAP_EV_RECV_SREJ:
		FUNC8(chan, control);
		break;
	}

	if (skb && !skb_in_use) {
		FUNC0("Freeing %p", skb);
		FUNC4(skb);
	}

	return err;
}