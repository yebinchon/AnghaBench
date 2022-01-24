#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct red_parms {scalar_t__ qth_min; scalar_t__ qth_max; } ;
struct TYPE_9__ {int /*<<< orphan*/  pdrop; int /*<<< orphan*/  prob_mark; int /*<<< orphan*/  prob_drop; int /*<<< orphan*/  forced_mark; int /*<<< orphan*/  forced_drop; int /*<<< orphan*/  matched; } ;
struct TYPE_10__ {scalar_t__ qavg; int qcount; void* qR; } ;
struct choke_sched_data {scalar_t__ limit; size_t tail; int tab_mask; TYPE_2__ stats; struct sk_buff** tab; TYPE_3__ vars; struct red_parms parms; } ;
struct TYPE_8__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
struct TYPE_11__ {scalar_t__ keys_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,unsigned int,struct sk_buff**) ; 
 scalar_t__ FUNC2 (struct choke_sched_data*,struct sk_buff*,unsigned int*) ; 
 TYPE_7__* FUNC3 (struct sk_buff*) ; 
 int FUNC4 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 struct choke_sched_data* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 
 scalar_t__ FUNC8 (struct red_parms const*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*) ; 
 scalar_t__ FUNC11 (struct red_parms const*,TYPE_3__*,scalar_t__) ; 
 void* FUNC12 (struct red_parms const*) ; 
 int /*<<< orphan*/  FUNC13 (struct choke_sched_data*) ; 
 scalar_t__ FUNC14 (struct choke_sched_data*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct Qdisc *sch,
			 struct sk_buff **to_free)
{
	struct choke_sched_data *q = FUNC5(sch);
	const struct red_parms *p = &q->parms;

	FUNC3(skb)->keys_valid = 0;
	/* Compute average queue usage (see RED) */
	q->vars.qavg = FUNC8(p, &q->vars, sch->q.qlen);
	if (FUNC10(&q->vars))
		FUNC9(&q->vars);

	/* Is queue small? */
	if (q->vars.qavg <= p->qth_min)
		q->vars.qcount = -1;
	else {
		unsigned int idx;

		/* Draw a packet at random from queue and compare flow */
		if (FUNC2(q, skb, &idx)) {
			q->stats.matched++;
			FUNC1(sch, idx, to_free);
			goto congestion_drop;
		}

		/* Queue is large, always mark/drop */
		if (q->vars.qavg > p->qth_max) {
			q->vars.qcount = -1;

			FUNC7(sch);
			if (FUNC14(q) || !FUNC13(q) ||
			    !FUNC0(skb)) {
				q->stats.forced_drop++;
				goto congestion_drop;
			}

			q->stats.forced_mark++;
		} else if (++q->vars.qcount) {
			if (FUNC11(p, &q->vars, q->vars.qavg)) {
				q->vars.qcount = 0;
				q->vars.qR = FUNC12(p);

				FUNC7(sch);
				if (!FUNC13(q) || !FUNC0(skb)) {
					q->stats.prob_drop++;
					goto congestion_drop;
				}

				q->stats.prob_mark++;
			}
		} else
			q->vars.qR = FUNC12(p);
	}

	/* Admit new packet */
	if (sch->q.qlen < q->limit) {
		q->tab[q->tail] = skb;
		q->tail = (q->tail + 1) & q->tab_mask;
		++sch->q.qlen;
		FUNC6(sch, skb);
		return NET_XMIT_SUCCESS;
	}

	q->stats.pdrop++;
	return FUNC4(skb, sch, to_free);

congestion_drop:
	FUNC4(skb, sch, to_free);
	return NET_XMIT_CN;
}