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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data_len; int /*<<< orphan*/  truesize; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  gfp_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/  frag_list; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int SKB_ALLOC_FCLONE ; 
 struct sk_buff* FUNC0 (unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC14(struct sk_buff *skb, int headroom,
				   gfp_t gfp_mask, bool fclone)
{
	unsigned int size = FUNC8(skb) + headroom;
	int flags = FUNC2(skb) | (fclone ? SKB_ALLOC_FCLONE : 0);
	struct sk_buff *n = FUNC0(size, gfp_mask, flags, NUMA_NO_NODE);

	if (!n)
		goto out;

	/* Set the data pointer */
	FUNC11(n, headroom);
	/* Set the tail pointer and length */
	FUNC10(n, FUNC8(skb));
	/* Copy the bytes */
	FUNC4(skb, n->data, n->len);

	n->truesize += skb->data_len;
	n->data_len  = skb->data_len;
	n->len	     = skb->len;

	if (FUNC12(skb)->nr_frags) {
		int i;

		if (FUNC9(skb, gfp_mask) ||
		    FUNC13(n, skb, gfp_mask)) {
			FUNC1(n);
			n = NULL;
			goto out;
		}
		for (i = 0; i < FUNC12(skb)->nr_frags; i++) {
			FUNC12(n)->frags[i] = FUNC12(skb)->frags[i];
			FUNC6(skb, i);
		}
		FUNC12(n)->nr_frags = i;
	}

	if (FUNC7(skb)) {
		FUNC12(n)->frag_list = FUNC12(skb)->frag_list;
		FUNC3(n);
	}

	FUNC5(n, skb);
out:
	return n;
}