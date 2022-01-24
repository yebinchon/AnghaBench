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
struct sk_buff {int tail; int end; int len; scalar_t__ data_len; struct sk_buff* next; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; struct sk_buff* frag_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 TYPE_1__* FUNC14 (struct sk_buff*) ; 
 void* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 

void *FUNC17(struct sk_buff *skb, int delta)
{
	/* If skb has not enough free space at tail, get new one
	 * plus 128 bytes for future expansions. If we have enough
	 * room at tail, reallocate without expansion only if skb is cloned.
	 */
	int i, k, eat = (skb->tail + delta) - skb->end;

	if (eat > 0 || FUNC5(skb)) {
		if (FUNC2(skb, 0, eat > 0 ? eat + 128 : 0,
				     GFP_ATOMIC))
			return NULL;
	}

	FUNC0(FUNC6(skb, FUNC12(skb),
			     FUNC15(skb), delta));

	/* Optimization: no fragments, no reasons to preestimate
	 * size of pulled pages. Superb.
	 */
	if (!FUNC11(skb))
		goto pull_pages;

	/* Estimate size of pulled pages. */
	eat = delta;
	for (i = 0; i < FUNC14(skb)->nr_frags; i++) {
		int size = FUNC8(&FUNC14(skb)->frags[i]);

		if (size >= eat)
			goto pull_pages;
		eat -= size;
	}

	/* If we need update frag list, we are in troubles.
	 * Certainly, it is possible to add an offset to skb data,
	 * but taking into account that pulling is expected to
	 * be very rare operation, it is worth to fight against
	 * further bloating skb head and crucify ourselves here instead.
	 * Pure masohism, indeed. 8)8)
	 */
	if (eat) {
		struct sk_buff *list = FUNC14(skb)->frag_list;
		struct sk_buff *clone = NULL;
		struct sk_buff *insp = NULL;

		do {
			if (list->len <= eat) {
				/* Eaten as whole. */
				eat -= list->len;
				list = list->next;
				insp = list;
			} else {
				/* Eaten partially. */

				if (FUNC13(list)) {
					/* Sucks! We need to fork list. :-( */
					clone = FUNC4(list, GFP_ATOMIC);
					if (!clone)
						return NULL;
					insp = list->next;
					list = clone;
				} else {
					/* This may be pulled without
					 * problems. */
					insp = list;
				}
				if (!FUNC3(list, eat)) {
					FUNC1(clone);
					return NULL;
				}
				break;
			}
		} while (eat);

		/* Free pulled out fragments. */
		while ((list = FUNC14(skb)->frag_list) != insp) {
			FUNC14(skb)->frag_list = list->next;
			FUNC1(list);
		}
		/* And insert new clone at head. */
		if (clone) {
			clone->next = list;
			FUNC14(skb)->frag_list = clone;
		}
	}
	/* Success! Now we may commit changes to skb data. */

pull_pages:
	eat = delta;
	k = 0;
	for (i = 0; i < FUNC14(skb)->nr_frags; i++) {
		int size = FUNC8(&FUNC14(skb)->frags[i]);

		if (size <= eat) {
			FUNC10(skb, i);
			eat -= size;
		} else {
			skb_frag_t *frag = &FUNC14(skb)->frags[k];

			*frag = FUNC14(skb)->frags[i];
			if (eat) {
				FUNC7(frag, eat);
				FUNC9(frag, eat);
				if (!i)
					goto end;
				eat = 0;
			}
			k++;
		}
	}
	FUNC14(skb)->nr_frags = k;

end:
	skb->tail     += delta;
	skb->data_len -= delta;

	if (!skb->data_len)
		FUNC16(skb, false);

	return FUNC15(skb);
}