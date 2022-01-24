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
typedef  int /*<<< orphan*/  u8 ;
struct tipc_msg {int dummy; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int INT_H_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 struct tipc_msg* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tipc_msg*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct tipc_msg*,int) ; 
 int FUNC7 (struct tipc_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct tipc_msg const*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int,int /*<<< orphan*/ ) ; 

int FUNC13(struct sk_buff *skb, const struct tipc_msg *hdr,
		      int pktmax, struct sk_buff_head *frags)
{
	int pktno, nof_fragms, dsz, dmax, eat;
	struct tipc_msg *_hdr;
	struct sk_buff *_skb;
	u8 *data;

	/* Non-linear buffer? */
	if (FUNC10(skb))
		return -ENOMEM;

	data = (u8 *)skb->data;
	dsz = FUNC7(FUNC3(skb));
	dmax = pktmax - INT_H_SIZE;
	if (dsz <= dmax || !dmax)
		return -EINVAL;

	nof_fragms = dsz / dmax + 1;
	for (pktno = 1; pktno <= nof_fragms; pktno++) {
		if (pktno < nof_fragms)
			eat = dmax;
		else
			eat = dsz % dmax;
		/* Allocate a new fragment */
		_skb = FUNC12(INT_H_SIZE + eat, GFP_ATOMIC);
		if (!_skb)
			goto error;
		FUNC11(_skb);
		FUNC2(frags, _skb);
		/* Copy header & data to the fragment */
		FUNC8(_skb, hdr, INT_H_SIZE);
		FUNC9(_skb, INT_H_SIZE, data, eat);
		data += eat;
		/* Update the fragment's header */
		_hdr = FUNC3(_skb);
		FUNC4(_hdr, pktno);
		FUNC5(_hdr, nof_fragms);
		FUNC6(_hdr, INT_H_SIZE + eat);
	}
	return 0;

error:
	FUNC1(frags);
	FUNC0(frags);
	return -ENOMEM;
}