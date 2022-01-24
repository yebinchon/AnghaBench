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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct l2cap_ctrl {int retries; int final; int /*<<< orphan*/  txseq; int /*<<< orphan*/  reqseq; } ;
struct l2cap_chan {scalar_t__ state; scalar_t__ tx_state; scalar_t__ fcs; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  unacked_frames; struct sk_buff* tx_send_head; int /*<<< orphan*/  frames_sent; int /*<<< orphan*/  next_tx_seq; int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  last_acked_seq; int /*<<< orphan*/  conn_state; int /*<<< orphan*/  remote_tx_win; } ;
struct TYPE_2__ {struct l2cap_ctrl l2cap; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 int /*<<< orphan*/  L2CAP_FCS_SIZE ; 
 scalar_t__ L2CAP_TX_STATE_XMIT ; 
 scalar_t__ FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct l2cap_chan*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct l2cap_chan *chan)
{
	struct sk_buff *skb, *tx_skb;
	struct l2cap_ctrl *control;
	int sent = 0;

	FUNC0("chan %p", chan);

	if (chan->state != BT_CONNECTED)
		return -ENOTCONN;

	if (FUNC15(CONN_REMOTE_BUSY, &chan->conn_state))
		return 0;

	if (FUNC1(chan))
		return 0;

	while (chan->tx_send_head &&
	       chan->unacked_frames < chan->remote_tx_win &&
	       chan->tx_state == L2CAP_TX_STATE_XMIT) {

		skb = chan->tx_send_head;

		FUNC5(skb)->l2cap.retries = 1;
		control = &FUNC5(skb)->l2cap;

		if (FUNC14(CONN_SEND_FBIT, &chan->conn_state))
			control->final = 1;

		control->reqseq = chan->buffer_seq;
		chan->last_acked_seq = chan->buffer_seq;
		control->txseq = chan->next_tx_seq;

		FUNC3(chan, control, skb);

		if (chan->fcs == L2CAP_FCS_CRC16) {
			u16 fcs = FUNC6(0, (u8 *) skb->data, skb->len);
			FUNC8(fcs, FUNC10(skb, L2CAP_FCS_SIZE));
		}

		/* Clone after data has been modified. Data is assumed to be
		   read-only (for locking purposes) on cloned sk_buffs.
		 */
		tx_skb = FUNC9(skb, GFP_KERNEL);

		if (!tx_skb)
			break;

		FUNC4(chan);

		chan->next_tx_seq = FUNC2(chan, chan->next_tx_seq);
		chan->unacked_frames++;
		chan->frames_sent++;
		sent++;

		if (FUNC11(&chan->tx_q, skb))
			chan->tx_send_head = NULL;
		else
			chan->tx_send_head = FUNC13(&chan->tx_q, skb);

		FUNC7(chan, tx_skb);
		FUNC0("Sent txseq %u", control->txseq);
	}

	FUNC0("Sent %d, %u unacked, %u in ERTM queue", sent,
	       chan->unacked_frames, FUNC12(&chan->tx_q));

	return sent;
}