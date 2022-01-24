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
struct sk_buff {int len; int data_len; int truesize; void* ip_summed; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* CHECKSUM_PARTIAL ; 
 int MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 scalar_t__ FUNC14 (struct sk_buff*) ; 
 TYPE_1__* FUNC15 (struct sk_buff*) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 

int FUNC17(struct sk_buff *tgt, struct sk_buff *skb, int shiftlen)
{
	int from, to, merge, todo;
	skb_frag_t *fragfrom, *fragto;

	FUNC0(shiftlen > skb->len);

	if (FUNC13(skb))
		return 0;
	if (FUNC16(tgt) || FUNC16(skb))
		return 0;

	todo = shiftlen;
	from = 0;
	to = FUNC15(tgt)->nr_frags;
	fragfrom = &FUNC15(skb)->frags[from];

	/* Actual merge is delayed until the point when we know we can
	 * commit all, so that we don't have to undo partial changes
	 */
	if (!to ||
	    !FUNC3(tgt, to, FUNC7(fragfrom),
			      FUNC4(fragfrom))) {
		merge = -1;
	} else {
		merge = to - 1;

		todo -= FUNC9(fragfrom);
		if (todo < 0) {
			if (FUNC14(skb) ||
			    FUNC14(tgt))
				return 0;

			/* All previous frag pointers might be stale! */
			fragfrom = &FUNC15(skb)->frags[from];
			fragto = &FUNC15(tgt)->frags[merge];

			FUNC10(fragto, shiftlen);
			FUNC12(fragfrom, shiftlen);
			FUNC5(fragfrom, shiftlen);

			goto onlymerged;
		}

		from++;
	}

	/* Skip full, not-fitting skb to avoid expensive operations */
	if ((shiftlen == skb->len) &&
	    (FUNC15(skb)->nr_frags - from) > (MAX_SKB_FRAGS - to))
		return 0;

	if (FUNC14(skb) || FUNC14(tgt))
		return 0;

	while ((todo > 0) && (from < FUNC15(skb)->nr_frags)) {
		if (to == MAX_SKB_FRAGS)
			return 0;

		fragfrom = &FUNC15(skb)->frags[from];
		fragto = &FUNC15(tgt)->frags[to];

		if (todo >= FUNC9(fragfrom)) {
			*fragto = *fragfrom;
			todo -= FUNC9(fragfrom);
			from++;
			to++;

		} else {
			FUNC1(fragfrom);
			FUNC8(fragto, fragfrom);
			FUNC6(fragto, fragfrom);
			FUNC11(fragto, todo);

			FUNC5(fragfrom, todo);
			FUNC12(fragfrom, todo);
			todo = 0;

			to++;
			break;
		}
	}

	/* Ready to "commit" this state change to tgt */
	FUNC15(tgt)->nr_frags = to;

	if (merge >= 0) {
		fragfrom = &FUNC15(skb)->frags[0];
		fragto = &FUNC15(tgt)->frags[merge];

		FUNC10(fragto, FUNC9(fragfrom));
		FUNC2(fragfrom);
	}

	/* Reposition in the original skb */
	to = 0;
	while (from < FUNC15(skb)->nr_frags)
		FUNC15(skb)->frags[to++] = FUNC15(skb)->frags[from++];
	FUNC15(skb)->nr_frags = to;

	FUNC0(todo > 0 && !FUNC15(skb)->nr_frags);

onlymerged:
	/* Most likely the tgt won't ever need its checksum anymore, skb on
	 * the other hand might need it if it needs to be resent
	 */
	tgt->ip_summed = CHECKSUM_PARTIAL;
	skb->ip_summed = CHECKSUM_PARTIAL;

	/* Yak, is it really working this way? Some helper please? */
	skb->len -= shiftlen;
	skb->data_len -= shiftlen;
	skb->truesize -= shiftlen;
	tgt->len += shiftlen;
	tgt->data_len += shiftlen;
	tgt->truesize += shiftlen;

	return shiftlen;
}