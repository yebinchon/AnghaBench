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
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int /*<<< orphan*/  poll; int /*<<< orphan*/  final; struct sk_buff* txseq; } ;
struct l2cap_chan {int /*<<< orphan*/  retrans_list; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  unacked_frames; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  srej_list; int /*<<< orphan*/  srej_q; int /*<<< orphan*/  expected_tx_seq; int /*<<< orphan*/  buffer_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  CONN_REJ_ACT ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int /*<<< orphan*/  CONN_SREJ_ACT ; 
 int /*<<< orphan*/  ECONNRESET ; 
#define  L2CAP_EV_RECV_IFRAME 137 
#define  L2CAP_EV_RECV_REJ 136 
#define  L2CAP_EV_RECV_RNR 135 
#define  L2CAP_EV_RECV_RR 134 
#define  L2CAP_EV_RECV_SREJ 133 
 int /*<<< orphan*/  L2CAP_RX_STATE_SREJ_SENT ; 
#define  L2CAP_TXSEQ_DUPLICATE 132 
#define  L2CAP_TXSEQ_EXPECTED 131 
#define  L2CAP_TXSEQ_INVALID 130 
#define  L2CAP_TXSEQ_INVALID_IGNORE 129 
#define  L2CAP_TXSEQ_UNEXPECTED 128 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int FUNC12 (struct l2cap_chan*,struct sk_buff*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC14 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC17 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct l2cap_chan *chan,
			       struct l2cap_ctrl *control,
			       struct sk_buff *skb, u8 event)
{
	int err = 0;
	bool skb_in_use = false;

	FUNC0("chan %p, control %p, skb %p, event %d", chan, control, skb,
	       event);

	switch (event) {
	case L2CAP_EV_RECV_IFRAME:
		switch (FUNC7(chan, control->txseq)) {
		case L2CAP_TXSEQ_EXPECTED:
			FUNC11(chan, control);

			if (FUNC24(CONN_LOCAL_BUSY, &chan->conn_state)) {
				FUNC0("Busy, discarding expected seq %d",
				       control->txseq);
				break;
			}

			chan->expected_tx_seq = FUNC3(chan,
							   control->txseq);

			chan->buffer_seq = chan->expected_tx_seq;
			skb_in_use = true;

			err = FUNC12(chan, skb, control);
			if (err)
				break;

			if (control->final) {
				if (!FUNC23(CONN_REJ_ACT,
							&chan->conn_state)) {
					control->final = 0;
					FUNC13(chan, control);
					FUNC8(chan);
				}
			}

			if (!FUNC24(CONN_LOCAL_BUSY, &chan->conn_state))
				FUNC14(chan);
			break;
		case L2CAP_TXSEQ_UNEXPECTED:
			FUNC11(chan, control);

			/* Can't issue SREJ frames in the local busy state.
			 * Drop this frame, it will be seen as missing
			 * when local busy is exited.
			 */
			if (FUNC24(CONN_LOCAL_BUSY, &chan->conn_state)) {
				FUNC0("Busy, discarding unexpected seq %d",
				       control->txseq);
				break;
			}

			/* There was a gap in the sequence, so an SREJ
			 * must be sent for each missing frame.  The
			 * current frame is stored for later use.
			 */
			FUNC22(&chan->srej_q, skb);
			skb_in_use = true;
			FUNC0("Queued %p (queue len %d)", skb,
			       FUNC21(&chan->srej_q));

			FUNC5(CONN_SREJ_ACT, &chan->conn_state);
			FUNC19(&chan->srej_list);
			FUNC18(chan, control->txseq);

			chan->rx_state = L2CAP_RX_STATE_SREJ_SENT;
			break;
		case L2CAP_TXSEQ_DUPLICATE:
			FUNC11(chan, control);
			break;
		case L2CAP_TXSEQ_INVALID_IGNORE:
			break;
		case L2CAP_TXSEQ_INVALID:
		default:
			FUNC15(chan, ECONNRESET);
			break;
		}
		break;
	case L2CAP_EV_RECV_RR:
		FUNC11(chan, control);
		if (control->final) {
			FUNC5(CONN_REMOTE_BUSY, &chan->conn_state);

			if (!FUNC23(CONN_REJ_ACT, &chan->conn_state) &&
			    !FUNC1(chan)) {
				control->final = 0;
				FUNC13(chan, control);
			}

			FUNC8(chan);
		} else if (control->poll) {
			FUNC16(chan);
		} else {
			if (FUNC23(CONN_REMOTE_BUSY,
					       &chan->conn_state) &&
			    chan->unacked_frames)
				FUNC4(chan);

			FUNC8(chan);
		}
		break;
	case L2CAP_EV_RECV_RNR:
		FUNC20(CONN_REMOTE_BUSY, &chan->conn_state);
		FUNC11(chan, control);
		if (control && control->poll) {
			FUNC20(CONN_SEND_FBIT, &chan->conn_state);
			FUNC17(chan, 0);
		}
		FUNC2(chan);
		FUNC19(&chan->retrans_list);
		break;
	case L2CAP_EV_RECV_REJ:
		FUNC9(chan, control);
		break;
	case L2CAP_EV_RECV_SREJ:
		FUNC10(chan, control);
		break;
	default:
		break;
	}

	if (skb && !skb_in_use) {
		FUNC0("Freeing %p", skb);
		FUNC6(skb);
	}

	return err;
}