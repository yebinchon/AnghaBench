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
struct skb_shared_info {int nr_frags; struct sk_buff* frag_list; int /*<<< orphan*/ * frags; } ;
struct sk_buff {unsigned int len; unsigned int truesize; unsigned int data_len; unsigned char* data; struct sk_buff* next; int /*<<< orphan*/  head; scalar_t__ head_frag; } ;
struct page {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int same_flow; int /*<<< orphan*/  count; struct sk_buff* last; int /*<<< orphan*/  free; scalar_t__ flush; } ;

/* Variables and functions */
 int E2BIG ; 
 int MAX_SKB_FRAGS ; 
 TYPE_1__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  NAPI_GRO_FREE ; 
 int /*<<< orphan*/  NAPI_GRO_FREE_STOLEN_HEAD ; 
 unsigned int FUNC1 (int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC13 (struct sk_buff*) ; 
 unsigned int FUNC14 (struct sk_buff*) ; 
 unsigned int FUNC15 (struct sk_buff*) ; 
 struct skb_shared_info* FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (int) ; 
 struct page* FUNC18 (int /*<<< orphan*/ ) ; 

int FUNC19(struct sk_buff *p, struct sk_buff *skb)
{
	struct skb_shared_info *pinfo, *skbinfo = FUNC16(skb);
	unsigned int offset = FUNC14(skb);
	unsigned int headlen = FUNC15(skb);
	unsigned int len = FUNC13(skb);
	unsigned int delta_truesize;
	struct sk_buff *lp;

	if (FUNC17(p->len + len >= 65536 || FUNC0(skb)->flush))
		return -E2BIG;

	lp = FUNC0(p)->last;
	pinfo = FUNC16(lp);

	if (headlen <= offset) {
		skb_frag_t *frag;
		skb_frag_t *frag2;
		int i = skbinfo->nr_frags;
		int nr_frags = pinfo->nr_frags + i;

		if (nr_frags > MAX_SKB_FRAGS)
			goto merge;

		offset -= headlen;
		pinfo->nr_frags = nr_frags;
		skbinfo->nr_frags = 0;

		frag = pinfo->frags + nr_frags;
		frag2 = skbinfo->frags + i;
		do {
			*--frag = *--frag2;
		} while (--i);

		FUNC9(frag, offset);
		FUNC12(frag, offset);

		/* all fragments truesize : remove (head size + sk_buff) */
		delta_truesize = skb->truesize -
				 FUNC2(FUNC8(skb));

		skb->truesize -= skb->data_len;
		skb->len -= skb->data_len;
		skb->data_len = 0;

		FUNC0(skb)->free = NAPI_GRO_FREE;
		goto done;
	} else if (skb->head_frag) {
		int nr_frags = pinfo->nr_frags;
		skb_frag_t *frag = pinfo->frags + nr_frags;
		struct page *page = FUNC18(skb->head);
		unsigned int first_size = headlen - offset;
		unsigned int first_offset;

		if (nr_frags + 1 + skbinfo->nr_frags > MAX_SKB_FRAGS)
			goto merge;

		first_offset = skb->data -
			       (unsigned char *)FUNC7(page) +
			       offset;

		pinfo->nr_frags = nr_frags + 1 + skbinfo->nr_frags;

		FUNC3(frag, page);
		FUNC10(frag, first_offset);
		FUNC11(frag, first_size);

		FUNC6(frag + 1, skbinfo->frags, sizeof(*frag) * skbinfo->nr_frags);
		/* We dont need to clear skbinfo->nr_frags here */

		delta_truesize = skb->truesize - FUNC1(sizeof(struct sk_buff));
		FUNC0(skb)->free = NAPI_GRO_FREE_STOLEN_HEAD;
		goto done;
	}

merge:
	delta_truesize = skb->truesize;
	if (offset > headlen) {
		unsigned int eat = offset - headlen;

		FUNC9(&skbinfo->frags[0], eat);
		FUNC12(&skbinfo->frags[0], eat);
		skb->data_len -= eat;
		skb->len -= eat;
		offset = headlen;
	}

	FUNC5(skb, offset);

	if (FUNC0(p)->last == p)
		FUNC16(p)->frag_list = skb;
	else
		FUNC0(p)->last->next = skb;
	FUNC0(p)->last = skb;
	FUNC4(skb);
	lp = p;

done:
	FUNC0(p)->count++;
	p->data_len += len;
	p->truesize += delta_truesize;
	p->len += len;
	if (lp != p) {
		lp->data_len += len;
		lp->truesize += delta_truesize;
		lp->len += len;
	}
	FUNC0(skb)->same_flow = 1;
	return 0;
}