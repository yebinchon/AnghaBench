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
struct TYPE_6__ {scalar_t__ qlen; } ;
struct teql_sched_data {TYPE_3__ q; TYPE_1__* m; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {int /*<<< orphan*/  qdisc; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_4__ {struct Qdisc* slaves; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct sk_buff* FUNC0 (TYPE_3__*) ; 
 struct netdev_queue* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 struct net_device* FUNC4 (struct Qdisc*) ; 
 struct teql_sched_data* FUNC5 (struct Qdisc*) ; 
 struct Qdisc* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct Qdisc *sch)
{
	struct teql_sched_data *dat = FUNC5(sch);
	struct netdev_queue *dat_queue;
	struct sk_buff *skb;
	struct Qdisc *q;

	skb = FUNC0(&dat->q);
	dat_queue = FUNC1(dat->m->dev, 0);
	q = FUNC6(dat_queue->qdisc);

	if (skb == NULL) {
		struct net_device *m = FUNC4(q);
		if (m) {
			dat->m->slaves = sch;
			FUNC2(m);
		}
	} else {
		FUNC3(sch, skb);
	}
	sch->q.qlen = dat->q.qlen + q->q.qlen;
	return skb;
}