#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  qavg; } ;
struct sfq_slot {int qlen; size_t hash; size_t next; int /*<<< orphan*/  allot; scalar_t__ backlog; TYPE_3__ vars; } ;
struct sfq_sched_data {int maxflows; size_t* ht; int maxdepth; int /*<<< orphan*/  scaled_quantum; struct sfq_slot* tail; scalar_t__ red_parms; struct sfq_slot* slots; TYPE_1__* dep; } ;
struct TYPE_6__ {int qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
typedef  size_t sfq_index ;
struct TYPE_5__ {size_t next; } ;

/* Variables and functions */
 size_t SFQ_EMPTY_SLOT ; 
 size_t SFQ_MAX_FLOWS ; 
 struct sk_buff* FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct sfq_sched_data* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (struct sfq_sched_data*,int) ; 
 unsigned int FUNC11 (struct sfq_sched_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sfq_sched_data*,size_t) ; 
 struct sk_buff* FUNC13 (struct sfq_slot*) ; 
 int /*<<< orphan*/  FUNC14 (struct sfq_slot*,struct sk_buff*) ; 

__attribute__((used)) static void FUNC15(struct Qdisc *sch)
{
	struct sfq_sched_data *q = FUNC5(sch);
	struct sk_buff *skb;
	int i;
	struct sfq_slot *slot;
	struct sk_buff_head list;
	int dropped = 0;
	unsigned int drop_len = 0;

	FUNC1(&list);

	for (i = 0; i < q->maxflows; i++) {
		slot = &q->slots[i];
		if (!slot->qlen)
			continue;
		while (slot->qlen) {
			skb = FUNC13(slot);
			FUNC10(q, i);
			FUNC2(&list, skb);
		}
		slot->backlog = 0;
		FUNC9(&slot->vars);
		q->ht[slot->hash] = SFQ_EMPTY_SLOT;
	}
	q->tail = NULL;

	while ((skb = FUNC0(&list)) != NULL) {
		unsigned int hash = FUNC11(q, skb);
		sfq_index x = q->ht[hash];

		slot = &q->slots[x];
		if (x == SFQ_EMPTY_SLOT) {
			x = q->dep[0].next; /* get a free slot */
			if (x >= SFQ_MAX_FLOWS) {
drop:
				FUNC6(sch, skb);
				drop_len += FUNC4(skb);
				FUNC3(skb);
				dropped++;
				continue;
			}
			q->ht[hash] = x;
			slot = &q->slots[x];
			slot->hash = hash;
		}
		if (slot->qlen >= q->maxdepth)
			goto drop;
		FUNC14(slot, skb);
		if (q->red_parms)
			slot->vars.qavg = FUNC8(q->red_parms,
							&slot->vars,
							slot->backlog);
		slot->backlog += FUNC4(skb);
		FUNC12(q, x);
		if (slot->qlen == 1) {		/* The flow is new */
			if (q->tail == NULL) {	/* It is the first flow */
				slot->next = x;
			} else {
				slot->next = q->tail->next;
				q->tail->next = x;
			}
			q->tail = slot;
			slot->allot = q->scaled_quantum;
		}
	}
	sch->q.qlen -= dropped;
	FUNC7(sch, dropped, drop_len);
}