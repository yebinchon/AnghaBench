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
struct rt_rq {scalar_t__ rt_queued; int /*<<< orphan*/  rt_nr_running; } ;
struct rq {int /*<<< orphan*/  nr_running; struct rt_rq rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rq* FUNC1 (struct rt_rq*) ; 
 int /*<<< orphan*/  FUNC2 (struct rq*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct rt_rq *rt_rq)
{
	struct rq *rq = FUNC1(rt_rq);

	FUNC0(&rq->rt != rt_rq);

	if (!rt_rq->rt_queued)
		return;

	FUNC0(!rq->nr_running);

	FUNC2(rq, rt_rq->rt_nr_running);
	rt_rq->rt_queued = 0;

}