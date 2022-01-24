#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct cbq_sched_data {scalar_t__ tx_len; int activemask; struct cbq_class** active; struct cbq_class* tx_borrowed; struct cbq_class* tx_class; } ;
struct TYPE_4__ {scalar_t__ borrows; } ;
struct cbq_class {scalar_t__ deficit; scalar_t__ quantum; int cpriority; struct cbq_class* next_alive; TYPE_3__* q; TYPE_1__ xstats; } ;
struct Qdisc {int dummy; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct TYPE_6__ {TYPE_2__ q; struct sk_buff* (* dequeue ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cbq_class*) ; 
 struct cbq_class* FUNC1 (struct cbq_class*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 struct cbq_sched_data* FUNC3 (struct Qdisc*) ; 
 struct sk_buff* FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static inline struct sk_buff *
FUNC5(struct Qdisc *sch, int prio)
{
	struct cbq_sched_data *q = FUNC3(sch);
	struct cbq_class *cl_tail, *cl_prev, *cl;
	struct sk_buff *skb;
	int deficit;

	cl_tail = cl_prev = q->active[prio];
	cl = cl_prev->next_alive;

	do {
		deficit = 0;

		/* Start round */
		do {
			struct cbq_class *borrow = cl;

			if (cl->q->q.qlen &&
			    (borrow = FUNC1(cl)) == NULL)
				goto skip_class;

			if (cl->deficit <= 0) {
				/* Class exhausted its allotment per
				 * this round. Switch to the next one.
				 */
				deficit = 1;
				cl->deficit += cl->quantum;
				goto next_class;
			}

			skb = cl->q->dequeue(cl->q);

			/* Class did not give us any skb :-(
			 * It could occur even if cl->q->q.qlen != 0
			 * f.e. if cl->q == "tbf"
			 */
			if (skb == NULL)
				goto skip_class;

			cl->deficit -= FUNC2(skb);
			q->tx_class = cl;
			q->tx_borrowed = borrow;
			if (borrow != cl) {
#ifndef CBQ_XSTATS_BORROWS_BYTES
				borrow->xstats.borrows++;
				cl->xstats.borrows++;
#else
				borrow->xstats.borrows += qdisc_pkt_len(skb);
				cl->xstats.borrows += qdisc_pkt_len(skb);
#endif
			}
			q->tx_len = FUNC2(skb);

			if (cl->deficit <= 0) {
				q->active[prio] = cl;
				cl = cl->next_alive;
				cl->deficit += cl->quantum;
			}
			return skb;

skip_class:
			if (cl->q->q.qlen == 0 || prio != cl->cpriority) {
				/* Class is empty or penalized.
				 * Unlink it from active chain.
				 */
				cl_prev->next_alive = cl->next_alive;
				cl->next_alive = NULL;

				/* Did cl_tail point to it? */
				if (cl == cl_tail) {
					/* Repair it! */
					cl_tail = cl_prev;

					/* Was it the last class in this band? */
					if (cl == cl_tail) {
						/* Kill the band! */
						q->active[prio] = NULL;
						q->activemask &= ~(1<<prio);
						if (cl->q->q.qlen)
							FUNC0(cl);
						return NULL;
					}

					q->active[prio] = cl_tail;
				}
				if (cl->q->q.qlen)
					FUNC0(cl);

				cl = cl_prev;
			}

next_class:
			cl_prev = cl;
			cl = cl->next_alive;
		} while (cl_prev != cl_tail);
	} while (deficit);

	q->active[prio] = cl_prev;

	return NULL;
}