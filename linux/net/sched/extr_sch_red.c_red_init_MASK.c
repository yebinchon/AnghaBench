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
struct red_sched_data {int /*<<< orphan*/  adapt_timer; struct Qdisc* sch; int /*<<< orphan*/ * qdisc; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  noop_qdisc ; 
 struct red_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  red_adaptative_timer ; 
 int FUNC1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct red_sched_data *q = FUNC0(sch);

	q->qdisc = &noop_qdisc;
	q->sch = sch;
	FUNC2(&q->adapt_timer, red_adaptative_timer, 0);
	return FUNC1(sch, opt, extack);
}