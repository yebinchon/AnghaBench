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
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct l2cap_chan {scalar_t__ mode; struct sock* data; } ;
struct TYPE_2__ {struct sk_buff* rx_busy_skb; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ L2CAP_MODE_ERTM ; 
 scalar_t__ L2CAP_MODE_STREAMING ; 
 int FUNC0 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct l2cap_chan*,int) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int FUNC5 (struct sock*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC6(struct l2cap_chan *chan, struct sk_buff *skb)
{
	struct sock *sk = chan->data;
	int err;

	FUNC3(sk);

	if (FUNC2(sk)->rx_busy_skb) {
		err = -ENOMEM;
		goto done;
	}

	if (chan->mode != L2CAP_MODE_ERTM &&
	    chan->mode != L2CAP_MODE_STREAMING) {
		/* Even if no filter is attached, we could potentially
		 * get errors from security modules, etc.
		 */
		err = FUNC5(sk, skb);
		if (err)
			goto done;
	}

	err = FUNC0(sk, skb);

	/* For ERTM, handle one skb that doesn't fit into the recv
	 * buffer.  This is important to do because the data frames
	 * have already been acked, so the skb cannot be discarded.
	 *
	 * Notify the l2cap core that the buffer is full, so the
	 * LOCAL_BUSY state is entered and no more frames are
	 * acked and reassembled until there is buffer space
	 * available.
	 */
	if (err < 0 && chan->mode == L2CAP_MODE_ERTM) {
		FUNC2(sk)->rx_busy_skb = skb;
		FUNC1(chan, 1);
		err = 0;
	}

done:
	FUNC4(sk);

	return err;
}