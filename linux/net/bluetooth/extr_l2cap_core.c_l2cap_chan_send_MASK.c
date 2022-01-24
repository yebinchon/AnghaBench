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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
struct l2cap_chan {scalar_t__ chan_type; scalar_t__ state; int mode; size_t omtu; TYPE_1__* ops; int /*<<< orphan*/  tx_credits; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  conn; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* suspend ) (struct l2cap_chan*) ;} ;

/* Variables and functions */
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int const) ; 
 int EBADFD ; 
 int EMSGSIZE ; 
 int ENOTCONN ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ L2CAP_CHAN_CONN_LESS ; 
 int /*<<< orphan*/  L2CAP_EV_DATA_REQUEST ; 
#define  L2CAP_MODE_BASIC 131 
#define  L2CAP_MODE_ERTM 130 
#define  L2CAP_MODE_LE_FLOWCTL 129 
#define  L2CAP_MODE_STREAMING 128 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (struct l2cap_chan*,struct msghdr*,size_t) ; 
 struct sk_buff* FUNC7 (struct l2cap_chan*,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct l2cap_chan*) ; 
 int FUNC10 (struct l2cap_chan*,struct sk_buff_head*,struct msghdr*,size_t) ; 
 int FUNC11 (struct l2cap_chan*,struct sk_buff_head*,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct l2cap_chan*,struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct l2cap_chan*,int /*<<< orphan*/ *,struct sk_buff_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct l2cap_chan*) ; 

int FUNC16(struct l2cap_chan *chan, struct msghdr *msg, size_t len)
{
	struct sk_buff *skb;
	int err;
	struct sk_buff_head seg_queue;

	if (!chan->conn)
		return -ENOTCONN;

	/* Connectionless channel */
	if (chan->chan_type == L2CAP_CHAN_CONN_LESS) {
		skb = FUNC7(chan, msg, len);
		if (FUNC1(skb))
			return FUNC2(skb);

		/* Channel lock is released before requesting new skb and then
		 * reacquired thus we need to recheck channel state.
		 */
		if (chan->state != BT_CONNECTED) {
			FUNC5(skb);
			return -ENOTCONN;
		}

		FUNC8(chan, skb);
		return len;
	}

	switch (chan->mode) {
	case L2CAP_MODE_LE_FLOWCTL:
		/* Check outgoing MTU */
		if (len > chan->omtu)
			return -EMSGSIZE;

		FUNC3(&seg_queue);

		err = FUNC10(chan, &seg_queue, msg, len);

		if (chan->state != BT_CONNECTED) {
			FUNC4(&seg_queue);
			err = -ENOTCONN;
		}

		if (err)
			return err;

		FUNC14(&seg_queue, &chan->tx_q);

		FUNC9(chan);

		if (!chan->tx_credits)
			chan->ops->suspend(chan);

		err = len;

		break;

	case L2CAP_MODE_BASIC:
		/* Check outgoing MTU */
		if (len > chan->omtu)
			return -EMSGSIZE;

		/* Create a basic PDU */
		skb = FUNC6(chan, msg, len);
		if (FUNC1(skb))
			return FUNC2(skb);

		/* Channel lock is released before requesting new skb and then
		 * reacquired thus we need to recheck channel state.
		 */
		if (chan->state != BT_CONNECTED) {
			FUNC5(skb);
			return -ENOTCONN;
		}

		FUNC8(chan, skb);
		err = len;
		break;

	case L2CAP_MODE_ERTM:
	case L2CAP_MODE_STREAMING:
		/* Check outgoing MTU */
		if (len > chan->omtu) {
			err = -EMSGSIZE;
			break;
		}

		FUNC3(&seg_queue);

		/* Do segmentation before calling in to the state machine,
		 * since it's possible to block while waiting for memory
		 * allocation.
		 */
		err = FUNC11(chan, &seg_queue, msg, len);

		/* The channel could have been closed while segmenting,
		 * check that it is still connected.
		 */
		if (chan->state != BT_CONNECTED) {
			FUNC4(&seg_queue);
			err = -ENOTCONN;
		}

		if (err)
			break;

		if (chan->mode == L2CAP_MODE_ERTM)
			FUNC13(chan, NULL, &seg_queue, L2CAP_EV_DATA_REQUEST);
		else
			FUNC12(chan, &seg_queue);

		err = len;

		/* If the skbs were not queued for sending, they'll still be in
		 * seg_queue and need to be purged.
		 */
		FUNC4(&seg_queue);
		break;

	default:
		FUNC0("bad state %1.1x", chan->mode);
		err = -EBADFD;
	}

	return err;
}