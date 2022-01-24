#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  childdrop; int /*<<< orphan*/  earlydrop; int /*<<< orphan*/  marked; int /*<<< orphan*/  penaltydrop; int /*<<< orphan*/  bucketdrop; int /*<<< orphan*/  queuedrop; } ;
struct sfb_sched_data {size_t slot; scalar_t__ limit; unsigned long rehash_interval; unsigned long rehash_time; int double_buffering; unsigned long warmup_time; scalar_t__ bin_size; size_t max; TYPE_3__ stats; TYPE_1__* bins; int /*<<< orphan*/  filter_list; struct Qdisc* qdisc; } ;
struct sfb_bucket {scalar_t__ qlen; size_t p_mark; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_8__ {size_t* hashes; } ;
struct TYPE_5__ {struct sfb_bucket** bins; int /*<<< orphan*/  perturbation; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 size_t SFB_BUCKET_MASK ; 
 size_t SFB_BUCKET_SHIFT ; 
 int SFB_LEVELS ; 
 size_t SFB_MAX_PROB ; 
 int __NET_XMIT_BYPASS ; 
 int /*<<< orphan*/  FUNC1 (struct sfb_bucket*,struct sfb_sched_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sfb_bucket*,struct sfb_sched_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct sfb_sched_data*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 size_t FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int FUNC9 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct sfb_sched_data* FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*) ; 
 struct tcf_proto* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,struct tcf_proto*,int*,size_t*) ; 
 scalar_t__ FUNC16 (struct sk_buff*,struct sfb_sched_data*) ; 
 TYPE_4__* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sfb_sched_data*) ; 
 size_t FUNC19 (size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC20 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int FUNC21 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC22 (int) ; 

__attribute__((used)) static int FUNC23(struct sk_buff *skb, struct Qdisc *sch,
		       struct sk_buff **to_free)
{

	struct sfb_sched_data *q = FUNC10(sch);
	struct Qdisc *child = q->qdisc;
	struct tcf_proto *fl;
	int i;
	u32 p_min = ~0;
	u32 minqlen = ~0;
	u32 r, sfbhash;
	u32 slot = q->slot;
	int ret = NET_XMIT_SUCCESS | __NET_XMIT_BYPASS;

	if (FUNC22(sch->q.qlen >= q->limit)) {
		FUNC13(sch);
		q->stats.queuedrop++;
		goto drop;
	}

	if (q->rehash_interval > 0) {
		unsigned long limit = q->rehash_time + q->rehash_interval;

		if (FUNC22(FUNC21(jiffies, limit))) {
			FUNC18(q);
			q->rehash_time = jiffies;
		} else if (FUNC22(!q->double_buffering && q->warmup_time > 0 &&
				    FUNC21(jiffies, limit - q->warmup_time))) {
			q->double_buffering = true;
		}
	}

	fl = FUNC14(q->filter_list);
	if (fl) {
		u32 salt;

		/* If using external classifiers, get result and record it. */
		if (!FUNC15(skb, fl, &ret, &salt))
			goto other_drop;
		sfbhash = FUNC19(salt, &q->bins[slot].perturbation);
	} else {
		sfbhash = FUNC20(skb, &q->bins[slot].perturbation);
	}


	if (!sfbhash)
		sfbhash = 1;
	FUNC17(skb)->hashes[slot] = sfbhash;

	for (i = 0; i < SFB_LEVELS; i++) {
		u32 hash = sfbhash & SFB_BUCKET_MASK;
		struct sfb_bucket *b = &q->bins[slot].bins[i][hash];

		sfbhash >>= SFB_BUCKET_SHIFT;
		if (b->qlen == 0)
			FUNC1(b, q);
		else if (b->qlen >= q->bin_size)
			FUNC2(b, q);
		if (minqlen > b->qlen)
			minqlen = b->qlen;
		if (p_min > b->p_mark)
			p_min = b->p_mark;
	}

	slot ^= 1;
	FUNC17(skb)->hashes[slot] = 0;

	if (FUNC22(minqlen >= q->max)) {
		FUNC13(sch);
		q->stats.bucketdrop++;
		goto drop;
	}

	if (FUNC22(p_min >= SFB_MAX_PROB)) {
		/* Inelastic flow */
		if (q->double_buffering) {
			sfbhash = FUNC20(skb,
			    &q->bins[slot].perturbation);
			if (!sfbhash)
				sfbhash = 1;
			FUNC17(skb)->hashes[slot] = sfbhash;

			for (i = 0; i < SFB_LEVELS; i++) {
				u32 hash = sfbhash & SFB_BUCKET_MASK;
				struct sfb_bucket *b = &q->bins[slot].bins[i][hash];

				sfbhash >>= SFB_BUCKET_SHIFT;
				if (b->qlen == 0)
					FUNC1(b, q);
				else if (b->qlen >= q->bin_size)
					FUNC2(b, q);
			}
		}
		if (FUNC16(skb, q)) {
			FUNC13(sch);
			q->stats.penaltydrop++;
			goto drop;
		}
		goto enqueue;
	}

	r = FUNC7() & SFB_MAX_PROB;

	if (FUNC22(r < p_min)) {
		if (FUNC22(p_min > SFB_MAX_PROB / 2)) {
			/* If we're marking that many packets, then either
			 * this flow is unresponsive, or we're badly congested.
			 * In either case, we want to start dropping packets.
			 */
			if (r < (p_min - SFB_MAX_PROB / 2) * 2) {
				q->stats.earlydrop++;
				goto drop;
			}
		}
		if (FUNC0(skb)) {
			q->stats.marked++;
		} else {
			q->stats.earlydrop++;
			goto drop;
		}
	}

enqueue:
	ret = FUNC9(skb, child, to_free);
	if (FUNC5(ret == NET_XMIT_SUCCESS)) {
		FUNC11(sch, skb);
		sch->q.qlen++;
		FUNC3(skb, q);
	} else if (FUNC6(ret)) {
		q->stats.childdrop++;
		FUNC12(sch);
	}
	return ret;

drop:
	FUNC8(skb, sch, to_free);
	return NET_XMIT_CN;
other_drop:
	if (ret & __NET_XMIT_BYPASS)
		FUNC12(sch);
	FUNC4(skb);
	return ret;
}