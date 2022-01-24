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
struct task_struct {int dummy; } ;
struct sched_rt_entity {int dummy; } ;
struct rt_rq {int dummy; } ;
struct rq {struct rt_rq rt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct rt_rq* FUNC1 (struct sched_rt_entity*) ; 
 struct sched_rt_entity* FUNC2 (struct rq*,struct rt_rq*) ; 
 struct task_struct* FUNC3 (struct sched_rt_entity*) ; 

__attribute__((used)) static struct task_struct *FUNC4(struct rq *rq)
{
	struct sched_rt_entity *rt_se;
	struct rt_rq *rt_rq  = &rq->rt;

	do {
		rt_se = FUNC2(rq, rt_rq);
		FUNC0(!rt_se);
		rt_rq = FUNC1(rt_se);
	} while (rt_rq);

	return FUNC3(rt_se);
}