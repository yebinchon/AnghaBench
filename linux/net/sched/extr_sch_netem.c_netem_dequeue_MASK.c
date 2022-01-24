#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; } ;
struct TYPE_8__ {scalar_t__ slot_next; scalar_t__ packets_left; scalar_t__ bytes_left; } ;
struct netem_sched_data {TYPE_3__* qdisc; TYPE_1__ slot; int /*<<< orphan*/  watchdog; } ;
struct TYPE_12__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_7__ q; } ;
struct TYPE_11__ {scalar_t__ time_to_send; } ;
struct TYPE_10__ {TYPE_2__* ops; } ;
struct TYPE_9__ {struct sk_buff* (* dequeue ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int NET_XMIT_SUCCESS ; 
 struct sk_buff* FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (struct netem_sched_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct netem_sched_data*,struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct netem_sched_data*) ; 
 TYPE_6__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int FUNC11 (struct sk_buff*,TYPE_3__*,struct sk_buff**) ; 
 unsigned int FUNC12 (struct sk_buff*) ; 
 struct netem_sched_data* FUNC13 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC14 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC16 (struct Qdisc*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC18 (TYPE_3__*) ; 
 struct sk_buff* FUNC19 (TYPE_3__*) ; 

__attribute__((used)) static struct sk_buff *FUNC20(struct Qdisc *sch)
{
	struct netem_sched_data *q = FUNC13(sch);
	struct sk_buff *skb;

tfifo_dequeue:
	skb = FUNC0(&sch->q);
	if (skb) {
		FUNC14(sch, skb);
deliver:
		FUNC9(sch, skb);
		return skb;
	}
	skb = FUNC7(q);
	if (skb) {
		u64 time_to_send;
		u64 now = FUNC3();

		/* if more time remaining? */
		time_to_send = FUNC8(skb)->time_to_send;
		if (q->slot.slot_next && q->slot.slot_next < time_to_send)
			FUNC1(q, now);

		if (time_to_send <= now && q->slot.slot_next <= now) {
			FUNC6(q, skb);
			sch->q.qlen--;
			FUNC14(sch, skb);
			skb->next = NULL;
			skb->prev = NULL;
			/* skb->dev shares skb->rbnode area,
			 * we need to restore its value.
			 */
			skb->dev = FUNC10(sch);

			if (q->slot.slot_next) {
				q->slot.packets_left--;
				q->slot.bytes_left -= FUNC12(skb);
				if (q->slot.packets_left <= 0 ||
				    q->slot.bytes_left <= 0)
					FUNC1(q, now);
			}

			if (q->qdisc) {
				unsigned int pkt_len = FUNC12(skb);
				struct sk_buff *to_free = NULL;
				int err;

				err = FUNC11(skb, q->qdisc, &to_free);
				FUNC2(to_free);
				if (err != NET_XMIT_SUCCESS &&
				    FUNC5(err)) {
					FUNC15(sch);
					FUNC16(sch, 1,
								  pkt_len);
				}
				goto tfifo_dequeue;
			}
			goto deliver;
		}

		if (q->qdisc) {
			skb = q->qdisc->ops->dequeue(q->qdisc);
			if (skb)
				goto deliver;
		}

		FUNC17(&q->watchdog,
					   FUNC4(time_to_send,
					       q->slot.slot_next));
	}

	if (q->qdisc) {
		skb = q->qdisc->ops->dequeue(q->qdisc);
		if (skb)
			goto deliver;
	}
	return NULL;
}