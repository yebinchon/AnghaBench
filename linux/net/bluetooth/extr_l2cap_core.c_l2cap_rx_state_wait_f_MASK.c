#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int dummy; } ;
struct l2cap_ctrl {int /*<<< orphan*/  reqseq; int /*<<< orphan*/  final; } ;
struct l2cap_chan {TYPE_5__* conn; TYPE_2__* hs_hcon; scalar_t__ unacked_frames; int /*<<< orphan*/  next_tx_seq; int /*<<< orphan*/ * tx_send_head; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  rx_state; int /*<<< orphan*/  conn_state; } ;
struct TYPE_10__ {TYPE_4__* hcon; int /*<<< orphan*/  mtu; } ;
struct TYPE_9__ {TYPE_3__* hdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  acl_mtu; } ;
struct TYPE_7__ {TYPE_1__* hdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  block_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_REMOTE_BUSY ; 
 int EPROTO ; 
 int /*<<< orphan*/  L2CAP_RX_STATE_RECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct l2cap_chan*) ; 
 int FUNC3 (struct l2cap_chan*,struct l2cap_ctrl*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct l2cap_chan *chan,
				 struct l2cap_ctrl *control,
				 struct sk_buff *skb, u8 event)
{
	int err;

	if (!control->final)
		return -EPROTO;

	FUNC0(CONN_REMOTE_BUSY, &chan->conn_state);

	chan->rx_state = L2CAP_RX_STATE_RECV;
	FUNC1(chan, control->reqseq);

	if (!FUNC5(&chan->tx_q))
		chan->tx_send_head = FUNC4(&chan->tx_q);
	else
		chan->tx_send_head = NULL;

	/* Rewind next_tx_seq to the point expected
	 * by the receiver.
	 */
	chan->next_tx_seq = control->reqseq;
	chan->unacked_frames = 0;

	if (chan->hs_hcon)
		chan->conn->mtu = chan->hs_hcon->hdev->block_mtu;
	else
		chan->conn->mtu = chan->conn->hcon->hdev->acl_mtu;

	err = FUNC2(chan);

	if (!err)
		err = FUNC3(chan, control, skb, event);

	return err;
}