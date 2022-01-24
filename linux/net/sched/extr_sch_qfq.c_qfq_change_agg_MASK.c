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
typedef  int /*<<< orphan*/  u32 ;
struct qfq_sched {int dummy; } ;
struct qfq_class {int dummy; } ;
struct qfq_aggregate {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct qfq_aggregate* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct qfq_sched* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct qfq_sched*,struct qfq_aggregate*,struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_sched*,struct qfq_class*) ; 
 struct qfq_aggregate* FUNC4 (struct qfq_sched*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct qfq_sched*,struct qfq_aggregate*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct qfq_class *cl, u32 weight,
			   u32 lmax)
{
	struct qfq_sched *q = FUNC1(sch);
	struct qfq_aggregate *new_agg = FUNC4(q, lmax, weight);

	if (new_agg == NULL) { /* create new aggregate */
		new_agg = FUNC0(sizeof(*new_agg), GFP_ATOMIC);
		if (new_agg == NULL)
			return -ENOBUFS;
		FUNC5(q, new_agg, lmax, weight);
	}
	FUNC3(q, cl);
	FUNC2(q, new_agg, cl);

	return 0;
}