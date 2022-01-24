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
struct sk_buff {struct sk_buff* next; scalar_t__ sk; } ;
struct TYPE_2__ {scalar_t__ nr_frags; struct sk_buff* frag_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/ * FUNC0 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct sk_buff*) ; 
 TYPE_1__* FUNC12 (struct sk_buff*) ; 
 int FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

int FUNC15(struct sk_buff *skb, int tailbits, struct sk_buff **trailer)
{
	int copyflag;
	int elt;
	struct sk_buff *skb1, **skb_p;

	/* If skb is cloned or its head is paged, reallocate
	 * head pulling out all the pages (pages are considered not writable
	 * at the moment even if they are anonymous).
	 */
	if ((FUNC3(skb) || FUNC12(skb)->nr_frags) &&
	    FUNC0(skb, FUNC9(skb)-FUNC7(skb)) == NULL)
		return -ENOMEM;

	/* Easy case. Most of packets will go this way. */
	if (!FUNC6(skb)) {
		/* A little of trouble, not enough of space for trailer.
		 * This should not happen, when stack is tuned to generate
		 * good frames. OK, on miss we reallocate and reserve even more
		 * space, 128 bytes is fair. */

		if (FUNC13(skb) < tailbits &&
		    FUNC2(skb, 0, tailbits-FUNC13(skb)+128, GFP_ATOMIC))
			return -ENOMEM;

		/* Voila! */
		*trailer = skb;
		return 1;
	}

	/* Misery. We are in troubles, going to mincer fragments... */

	elt = 1;
	skb_p = &FUNC12(skb)->frag_list;
	copyflag = 0;

	while ((skb1 = *skb_p) != NULL) {
		int ntail = 0;

		/* The fragment is partially pulled by someone,
		 * this can happen on input. Copy it and everything
		 * after it. */

		if (FUNC11(skb1))
			copyflag = 1;

		/* If the skb is the last, worry about trailer. */

		if (skb1->next == NULL && tailbits) {
			if (FUNC12(skb1)->nr_frags ||
			    FUNC6(skb1) ||
			    FUNC13(skb1) < tailbits)
				ntail = tailbits + 128;
		}

		if (copyflag ||
		    FUNC3(skb1) ||
		    ntail ||
		    FUNC12(skb1)->nr_frags ||
		    FUNC6(skb1)) {
			struct sk_buff *skb2;

			/* Fuck, we are miserable poor guys... */
			if (ntail == 0)
				skb2 = FUNC4(skb1, GFP_ATOMIC);
			else
				skb2 = FUNC5(skb1,
						       FUNC8(skb1),
						       ntail,
						       GFP_ATOMIC);
			if (FUNC14(skb2 == NULL))
				return -ENOMEM;

			if (skb1->sk)
				FUNC10(skb2, skb1->sk);

			/* Looking around. Are we still alive?
			 * OK, link new skb, drop old one */

			skb2->next = skb1->next;
			*skb_p = skb2;
			FUNC1(skb1);
			skb1 = skb2;
		}
		elt++;
		*trailer = skb1;
		skb_p = &skb1->next;
	}

	return elt;
}