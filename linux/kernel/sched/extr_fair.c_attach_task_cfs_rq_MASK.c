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
struct sched_entity {int /*<<< orphan*/  vruntime; } ;
struct task_struct {struct sched_entity se; } ;
struct cfs_rq {scalar_t__ min_vruntime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sched_entity*) ; 
 struct cfs_rq* FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct task_struct*) ; 

__attribute__((used)) static void FUNC3(struct task_struct *p)
{
	struct sched_entity *se = &p->se;
	struct cfs_rq *cfs_rq = FUNC1(se);

	FUNC0(se);

	if (!FUNC2(p))
		se->vruntime += cfs_rq->min_vruntime;
}