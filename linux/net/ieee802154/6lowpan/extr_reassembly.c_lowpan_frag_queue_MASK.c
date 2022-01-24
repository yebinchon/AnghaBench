#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int len; unsigned long _skb_refdst; int /*<<< orphan*/  truesize; int /*<<< orphan*/  tstamp; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct TYPE_4__ {int flags; int len; int meat; int /*<<< orphan*/  fqdir; int /*<<< orphan*/  stamp; struct sk_buff* fragments_tail; } ;
struct lowpan_frag_queue {TYPE_2__ q; } ;
struct lowpan_802154_cb {int dummy; } ;
struct inet_skb_parm {int dummy; } ;
struct inet6_skb_parm {int dummy; } ;
struct TYPE_3__ {int d_offset; int d_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int INET_FRAG_COMPLETE ; 
 int INET_FRAG_FIRST_IN ; 
 int INET_FRAG_LAST_IN ; 
 scalar_t__ LOWPAN_DISPATCH_FRAG1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (TYPE_2__*,struct sk_buff*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_1__* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct lowpan_frag_queue*,struct sk_buff*,struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC8(struct lowpan_frag_queue *fq,
			     struct sk_buff *skb, u8 frag_type)
{
	struct sk_buff *prev_tail;
	struct net_device *ldev;
	int end, offset, err;

	/* inet_frag_queue_* functions use skb->cb; see struct ipfrag_skb_cb
	 * in inet_fragment.c
	 */
	FUNC0(sizeof(struct lowpan_802154_cb) > sizeof(struct inet_skb_parm));
	FUNC0(sizeof(struct lowpan_802154_cb) > sizeof(struct inet6_skb_parm));

	if (fq->q.flags & INET_FRAG_COMPLETE)
		goto err;

	offset = FUNC5(skb)->d_offset << 3;
	end = FUNC5(skb)->d_size;

	/* Is this the final fragment? */
	if (offset + skb->len == end) {
		/* If we already have some bits beyond end
		 * or have different end, the segment is corrupted.
		 */
		if (end < fq->q.len ||
		    ((fq->q.flags & INET_FRAG_LAST_IN) && end != fq->q.len))
			goto err;
		fq->q.flags |= INET_FRAG_LAST_IN;
		fq->q.len = end;
	} else {
		if (end > fq->q.len) {
			/* Some bits beyond end -> corruption. */
			if (fq->q.flags & INET_FRAG_LAST_IN)
				goto err;
			fq->q.len = end;
		}
	}

	ldev = skb->dev;
	if (ldev)
		skb->dev = NULL;
	FUNC2();

	prev_tail = fq->q.fragments_tail;
	err = FUNC3(&fq->q, skb, offset, end);
	if (err)
		goto err;

	fq->q.stamp = skb->tstamp;
	if (frag_type == LOWPAN_DISPATCH_FRAG1)
		fq->q.flags |= INET_FRAG_FIRST_IN;

	fq->q.meat += skb->len;
	FUNC1(fq->q.fqdir, skb->truesize);

	if (fq->q.flags == (INET_FRAG_FIRST_IN | INET_FRAG_LAST_IN) &&
	    fq->q.meat == fq->q.len) {
		int res;
		unsigned long orefdst = skb->_skb_refdst;

		skb->_skb_refdst = 0UL;
		res = FUNC6(fq, skb, prev_tail, ldev);
		skb->_skb_refdst = orefdst;
		return res;
	}
	FUNC7(skb);

	return -1;
err:
	FUNC4(skb);
	return -1;
}