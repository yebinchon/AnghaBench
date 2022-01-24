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
struct sk_buff_head {int dummy; } ;
struct l2cap_ctrl {int sframe; int poll; int /*<<< orphan*/  final; int /*<<< orphan*/  reqseq; int /*<<< orphan*/  super; } ;
struct l2cap_chan {int retry_count; int max_tx; int /*<<< orphan*/  tx_state; int /*<<< orphan*/  unacked_frames; int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  tx_q; int /*<<< orphan*/ * tx_send_head; } ;
typedef  int /*<<< orphan*/  local_control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  CONN_LOCAL_BUSY ; 
 int /*<<< orphan*/  CONN_RNR_SENT ; 
 int /*<<< orphan*/  ECONNABORTED ; 
#define  L2CAP_EV_DATA_REQUEST 134 
#define  L2CAP_EV_EXPLICIT_POLL 133 
#define  L2CAP_EV_LOCAL_BUSY_CLEAR 132 
#define  L2CAP_EV_LOCAL_BUSY_DETECTED 131 
#define  L2CAP_EV_MONITOR_TO 130 
#define  L2CAP_EV_RECV_FBIT 129 
#define  L2CAP_EV_RECV_REQSEQ_AND_FBIT 128 
 int /*<<< orphan*/  L2CAP_RX_STATE_SREJ_SENT ; 
 int /*<<< orphan*/  L2CAP_SUPER_RR ; 
 int /*<<< orphan*/  L2CAP_TX_STATE_WAIT_F ; 
 int /*<<< orphan*/  L2CAP_TX_STATE_XMIT ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct l2cap_chan*,struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_ctrl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(struct l2cap_chan *chan,
				  struct l2cap_ctrl *control,
				  struct sk_buff_head *skbs, u8 event)
{
	FUNC0("chan %p, control %p, skbs %p, event %d", chan, control, skbs,
	       event);

	switch (event) {
	case L2CAP_EV_DATA_REQUEST:
		if (chan->tx_send_head == NULL)
			chan->tx_send_head = FUNC13(skbs);
		/* Queue data, but don't send. */
		FUNC14(skbs, &chan->tx_q);
		break;
	case L2CAP_EV_LOCAL_BUSY_DETECTED:
		FUNC0("Enter LOCAL_BUSY");
		FUNC12(CONN_LOCAL_BUSY, &chan->conn_state);

		if (chan->rx_state == L2CAP_RX_STATE_SREJ_SENT) {
			/* The SREJ_SENT state must be aborted if we are to
			 * enter the LOCAL_BUSY state.
			 */
			FUNC5(chan);
		}

		FUNC7(chan);

		break;
	case L2CAP_EV_LOCAL_BUSY_CLEAR:
		FUNC0("Exit LOCAL_BUSY");
		FUNC4(CONN_LOCAL_BUSY, &chan->conn_state);

		if (FUNC15(CONN_RNR_SENT, &chan->conn_state)) {
			struct l2cap_ctrl local_control;
			FUNC11(&local_control, 0, sizeof(local_control));
			local_control.sframe = 1;
			local_control.super = L2CAP_SUPER_RR;
			local_control.poll = 1;
			local_control.reqseq = chan->buffer_seq;
			FUNC10(chan, &local_control);

			chan->retry_count = 1;
			FUNC2(chan);
			chan->tx_state = L2CAP_TX_STATE_WAIT_F;
		}
		break;
	case L2CAP_EV_RECV_REQSEQ_AND_FBIT:
		FUNC6(chan, control->reqseq);

		/* Fall through */

	case L2CAP_EV_RECV_FBIT:
		if (control && control->final) {
			FUNC1(chan);
			if (chan->unacked_frames > 0)
				FUNC3(chan);
			chan->retry_count = 0;
			chan->tx_state = L2CAP_TX_STATE_XMIT;
			FUNC0("recv fbit tx_state 0x2.2%x", chan->tx_state);
		}
		break;
	case L2CAP_EV_EXPLICIT_POLL:
		/* Ignore */
		break;
	case L2CAP_EV_MONITOR_TO:
		if (chan->max_tx == 0 || chan->retry_count < chan->max_tx) {
			FUNC9(chan, 1);
			FUNC2(chan);
			chan->retry_count++;
		} else {
			FUNC8(chan, ECONNABORTED);
		}
		break;
	default:
		break;
	}
}