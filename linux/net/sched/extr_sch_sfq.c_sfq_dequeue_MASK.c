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
struct sk_buff {int dummy; } ;
struct sfq_slot {size_t next; scalar_t__ allot; scalar_t__ qlen; size_t hash; int /*<<< orphan*/  backlog; } ;
struct sfq_sched_data {scalar_t__ scaled_quantum; struct sfq_slot* tail; int /*<<< orphan*/ * ht; struct sfq_slot* slots; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;
typedef  size_t sfq_index ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  SFQ_EMPTY_SLOT ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct sfq_sched_data* FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sfq_sched_data*,size_t) ; 
 struct sk_buff* FUNC6 (struct sfq_slot*) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct Qdisc *sch)
{
	struct sfq_sched_data *q = FUNC3(sch);
	struct sk_buff *skb;
	sfq_index a, next_a;
	struct sfq_slot *slot;

	/* No active slots */
	if (q->tail == NULL)
		return NULL;

next_slot:
	a = q->tail->next;
	slot = &q->slots[a];
	if (slot->allot <= 0) {
		q->tail = slot;
		slot->allot += q->scaled_quantum;
		goto next_slot;
	}
	skb = FUNC6(slot);
	FUNC5(q, a);
	FUNC1(sch, skb);
	sch->q.qlen--;
	FUNC4(sch, skb);
	slot->backlog -= FUNC2(skb);
	/* Is the slot empty? */
	if (slot->qlen == 0) {
		q->ht[slot->hash] = SFQ_EMPTY_SLOT;
		next_a = slot->next;
		if (a == next_a) {
			q->tail = NULL; /* no more active slots */
			return skb;
		}
		q->tail->next = next_a;
	} else {
		slot->allot -= FUNC0(FUNC2(skb));
	}
	return skb;
}