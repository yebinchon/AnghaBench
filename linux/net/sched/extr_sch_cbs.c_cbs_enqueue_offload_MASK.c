#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {int dummy; } ;
struct cbs_sched_data {struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,struct Qdisc*,struct Qdisc*,struct sk_buff**) ; 
 struct cbs_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, struct Qdisc *sch,
			       struct sk_buff **to_free)
{
	struct cbs_sched_data *q = FUNC1(sch);
	struct Qdisc *qdisc = q->qdisc;

	return FUNC0(skb, sch, qdisc, to_free);
}