#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  struct l2cap_chan* u16 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct l2cap_ctrl {int final; struct l2cap_chan* txseq; int /*<<< orphan*/  reqseq; struct l2cap_chan* retries; } ;
struct TYPE_4__ {scalar_t__ head; } ;
struct l2cap_chan {scalar_t__ fcs; int /*<<< orphan*/  buffer_seq; int /*<<< orphan*/  last_acked_seq; int /*<<< orphan*/  flags; TYPE_1__ retrans_list; int /*<<< orphan*/  conn_state; struct l2cap_chan* max_tx; int /*<<< orphan*/  tx_q; } ;
struct TYPE_5__ {struct l2cap_ctrl l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*) ; 
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int /*<<< orphan*/  CONN_SEND_FBIT ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int /*<<< orphan*/  FLAG_EXT_CTRL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 scalar_t__ L2CAP_FCS_SIZE ; 
 scalar_t__ L2CAP_HDR_SIZE ; 
 scalar_t__ L2CAP_SEQ_LIST_CLEAR ; 
 scalar_t__ FUNC1 (struct l2cap_chan*) ; 
 struct l2cap_chan* FUNC2 (struct l2cap_ctrl*) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_ctrl*) ; 
 TYPE_3__* FUNC4 (struct sk_buff*) ; 
 struct l2cap_chan* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *,struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct l2cap_chan* FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_chan*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct sk_buff* FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 struct sk_buff* FUNC15 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC19(struct l2cap_chan *chan)
{
	struct l2cap_ctrl control;
	struct sk_buff *skb;
	struct sk_buff *tx_skb;
	u16 seq;

	FUNC0("chan %p", chan);

	if (FUNC18(CONN_REMOTE_BUSY, &chan->conn_state))
		return;

	if (FUNC1(chan))
		return;

	while (chan->retrans_list.head != L2CAP_SEQ_LIST_CLEAR) {
		seq = FUNC10(&chan->retrans_list);

		skb = FUNC7(&chan->tx_q, seq);
		if (!skb) {
			FUNC0("Error: Can't retransmit seq %d, frame missing",
			       seq);
			continue;
		}

		FUNC4(skb)->l2cap.retries++;
		control = FUNC4(skb)->l2cap;

		if (chan->max_tx != 0 &&
		    FUNC4(skb)->l2cap.retries > chan->max_tx) {
			FUNC0("Retry limit exceeded (%d)", chan->max_tx);
			FUNC8(chan, ECONNRESET);
			FUNC9(&chan->retrans_list);
			break;
		}

		control.reqseq = chan->buffer_seq;
		if (FUNC17(CONN_SEND_FBIT, &chan->conn_state))
			control.final = 1;
		else
			control.final = 0;

		if (FUNC14(skb)) {
			/* Cloned sk_buffs are read-only, so we need a
			 * writeable copy
			 */
			tx_skb = FUNC15(skb, GFP_KERNEL);
		} else {
			tx_skb = FUNC13(skb, GFP_KERNEL);
		}

		if (!tx_skb) {
			FUNC9(&chan->retrans_list);
			break;
		}

		/* Update skb contents */
		if (FUNC18(FLAG_EXT_CTRL, &chan->flags)) {
			FUNC12(FUNC3(&control),
					   tx_skb->data + L2CAP_HDR_SIZE);
		} else {
			FUNC11(FUNC2(&control),
					   tx_skb->data + L2CAP_HDR_SIZE);
		}

		/* Update FCS */
		if (chan->fcs == L2CAP_FCS_CRC16) {
			u16 fcs = FUNC5(0, (u8 *) tx_skb->data,
					tx_skb->len - L2CAP_FCS_SIZE);
			FUNC11(fcs, FUNC16(tx_skb) -
						L2CAP_FCS_SIZE);
		}

		FUNC6(chan, tx_skb);

		FUNC0("Resent txseq %d", control.txseq);

		chan->last_acked_seq = chan->buffer_seq;
	}
}