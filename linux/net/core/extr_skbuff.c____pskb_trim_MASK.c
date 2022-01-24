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
struct sk_buff {int len; unsigned int data_len; scalar_t__ destructor; int /*<<< orphan*/  sk; struct sk_buff* next; } ;
struct TYPE_2__ {int nr_frags; struct sk_buff* frag_list; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sk_buff*,unsigned int) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff**) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 TYPE_1__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ sock_edemux ; 
 scalar_t__ FUNC16 (int) ; 

int FUNC17(struct sk_buff *skb, unsigned int len)
{
	struct sk_buff **fragp;
	struct sk_buff *frag;
	int offset = FUNC12(skb);
	int nfrags = FUNC15(skb)->nr_frags;
	int i;
	int err;

	if (FUNC4(skb) &&
	    FUNC16((err = FUNC1(skb, 0, 0, GFP_ATOMIC))))
		return err;

	i = 0;
	if (offset >= len)
		goto drop_pages;

	for (; i < nfrags; i++) {
		int end = offset + FUNC8(&FUNC15(skb)->frags[i]);

		if (end < len) {
			offset = end;
			continue;
		}

		FUNC9(&FUNC15(skb)->frags[i++], len - offset);

drop_pages:
		FUNC15(skb)->nr_frags = i;

		for (; i < nfrags; i++)
			FUNC10(skb, i);

		if (FUNC11(skb))
			FUNC6(skb);
		goto done;
	}

	for (fragp = &FUNC15(skb)->frag_list; (frag = *fragp);
	     fragp = &frag->next) {
		int end = offset + frag->len;

		if (FUNC14(frag)) {
			struct sk_buff *nfrag;

			nfrag = FUNC3(frag, GFP_ATOMIC);
			if (FUNC16(!nfrag))
				return -ENOMEM;

			nfrag->next = frag->next;
			FUNC0(frag);
			frag = nfrag;
			*fragp = frag;
		}

		if (end < len) {
			offset = end;
			continue;
		}

		if (end > len &&
		    FUNC16((err = FUNC2(frag, len - offset))))
			return err;

		if (frag->next)
			FUNC7(&frag->next);
		break;
	}

done:
	if (len > FUNC12(skb)) {
		skb->data_len -= skb->len - len;
		skb->len       = len;
	} else {
		skb->len       = len;
		skb->data_len  = 0;
		FUNC13(skb, len);
	}

	if (!skb->sk || skb->destructor == sock_edemux)
		FUNC5(skb);
	return 0;
}