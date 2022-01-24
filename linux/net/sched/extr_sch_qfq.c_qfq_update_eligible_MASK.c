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
struct qfq_sched {unsigned long* bitmaps; int /*<<< orphan*/  V; } ;
struct qfq_group {int /*<<< orphan*/  S; } ;

/* Variables and functions */
 size_t ER ; 
 size_t IB ; 
 size_t IR ; 
 struct qfq_group* FUNC0 (struct qfq_sched*,unsigned long) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qfq_sched*) ; 

__attribute__((used)) static void FUNC3(struct qfq_sched *q)
{
	struct qfq_group *grp;
	unsigned long ineligible;

	ineligible = q->bitmaps[IR] | q->bitmaps[IB];
	if (ineligible) {
		if (!q->bitmaps[ER]) {
			grp = FUNC0(q, ineligible);
			if (FUNC1(grp->S, q->V))
				q->V = grp->S;
		}
		FUNC2(q);
	}
}