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
typedef  void* u32 ;
struct qfq_sched {int /*<<< orphan*/  nonfull_aggs; } ;
struct qfq_aggregate {void* class_weight; void* lmax; int /*<<< orphan*/  nonfull_next; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct qfq_sched *q, struct qfq_aggregate *agg,
			 u32 lmax, u32 weight)
{
	FUNC0(&agg->active);
	FUNC1(&agg->nonfull_next, &q->nonfull_aggs);

	agg->lmax = lmax;
	agg->class_weight = weight;
}