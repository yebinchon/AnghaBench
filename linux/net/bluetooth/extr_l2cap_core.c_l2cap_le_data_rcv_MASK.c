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
typedef  scalar_t__ u16 ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  data; } ;
struct l2cap_chan {scalar_t__ imtu; scalar_t__ sdu_len; scalar_t__ mps; struct sk_buff* sdu_last_frag; struct sk_buff* sdu; scalar_t__ rx_credits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  ECONNRESET ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 scalar_t__ L2CAP_SDULEN_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff*,struct sk_buff**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_chan*) ; 
 int FUNC6 (struct l2cap_chan*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct l2cap_chan*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct l2cap_chan *chan, struct sk_buff *skb)
{
	int err;

	if (!chan->rx_credits) {
		FUNC1("No credits to receive LE L2CAP data");
		FUNC7(chan, ECONNRESET);
		return -ENOBUFS;
	}

	if (chan->imtu < skb->len) {
		FUNC1("Too big LE L2CAP PDU");
		return -ENOBUFS;
	}

	chan->rx_credits--;
	FUNC0("rx_credits %u -> %u", chan->rx_credits + 1, chan->rx_credits);

	/* Update if remote had run out of credits, this should only happens
	 * if the remote is not using the entire MPS.
	 */
	if (!chan->rx_credits)
		FUNC5(chan);

	err = 0;

	if (!chan->sdu) {
		u16 sdu_len;

		sdu_len = FUNC3(skb->data);
		FUNC8(skb, L2CAP_SDULEN_SIZE);

		FUNC0("Start of new SDU. sdu_len %u skb->len %u imtu %u",
		       sdu_len, skb->len, chan->imtu);

		if (sdu_len > chan->imtu) {
			FUNC1("Too big LE L2CAP SDU length received");
			err = -EMSGSIZE;
			goto failed;
		}

		if (skb->len > sdu_len) {
			FUNC1("Too much LE L2CAP data received");
			err = -EINVAL;
			goto failed;
		}

		if (skb->len == sdu_len)
			return FUNC6(chan, skb);

		chan->sdu = skb;
		chan->sdu_len = sdu_len;
		chan->sdu_last_frag = skb;

		/* Detect if remote is not able to use the selected MPS */
		if (skb->len + L2CAP_SDULEN_SIZE < chan->mps) {
			u16 mps_len = skb->len + L2CAP_SDULEN_SIZE;

			/* Adjust the number of credits */
			FUNC0("chan->mps %u -> %u", chan->mps, mps_len);
			chan->mps = mps_len;
			FUNC5(chan);
		}

		return 0;
	}

	FUNC0("SDU fragment. chan->sdu->len %u skb->len %u chan->sdu_len %u",
	       chan->sdu->len, skb->len, chan->sdu_len);

	if (chan->sdu->len + skb->len > chan->sdu_len) {
		FUNC1("Too much LE L2CAP data received");
		err = -EINVAL;
		goto failed;
	}

	FUNC2(chan->sdu, skb, &chan->sdu_last_frag);
	skb = NULL;

	if (chan->sdu->len == chan->sdu_len) {
		err = FUNC6(chan, chan->sdu);
		if (!err) {
			chan->sdu = NULL;
			chan->sdu_last_frag = NULL;
			chan->sdu_len = 0;
		}
	}

failed:
	if (err) {
		FUNC4(skb);
		FUNC4(chan->sdu);
		chan->sdu = NULL;
		chan->sdu_last_frag = NULL;
		chan->sdu_len = 0;
	}

	/* We can't return an error here since we took care of the skb
	 * freeing internally. An error return would cause the caller to
	 * do a double-free of the skb.
	 */
	return 0;
}