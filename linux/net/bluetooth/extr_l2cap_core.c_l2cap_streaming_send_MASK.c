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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct l2cap_ctrl {int retries; int /*<<< orphan*/  txseq; scalar_t__ reqseq; } ;
struct l2cap_chan {scalar_t__ fcs; int /*<<< orphan*/  frames_sent; int /*<<< orphan*/  next_tx_seq; int /*<<< orphan*/  tx_q; } ;
struct TYPE_2__ {struct l2cap_ctrl l2cap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct l2cap_chan*,...) ; 
 scalar_t__ L2CAP_FCS_CRC16 ; 
 int /*<<< orphan*/  L2CAP_FCS_SIZE ; 
 scalar_t__ FUNC1 (struct l2cap_chan*) ; 
 int /*<<< orphan*/  FUNC2 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff_head*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct l2cap_chan *chan,
				 struct sk_buff_head *skbs)
{
	struct sk_buff *skb;
	struct l2cap_ctrl *control;

	FUNC0("chan %p, skbs %p", chan, skbs);

	if (FUNC1(chan))
		return;

	FUNC11(skbs, &chan->tx_q);

	while (!FUNC10(&chan->tx_q)) {

		skb = FUNC8(&chan->tx_q);

		FUNC4(skb)->l2cap.retries = 1;
		control = &FUNC4(skb)->l2cap;

		control->reqseq = 0;
		control->txseq = chan->next_tx_seq;

		FUNC3(chan, control, skb);

		if (chan->fcs == L2CAP_FCS_CRC16) {
			u16 fcs = FUNC5(0, (u8 *) skb->data, skb->len);
			FUNC7(fcs, FUNC9(skb, L2CAP_FCS_SIZE));
		}

		FUNC6(chan, skb);

		FUNC0("Sent txseq %u", control->txseq);

		chan->next_tx_seq = FUNC2(chan, chan->next_tx_seq);
		chan->frames_sent++;
	}
}