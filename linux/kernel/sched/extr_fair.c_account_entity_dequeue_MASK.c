#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  weight; } ;
struct sched_entity {int /*<<< orphan*/  group_node; TYPE_1__ load; } ;
struct cfs_rq {int /*<<< orphan*/  nr_running; int /*<<< orphan*/  load; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(struct cfs_rq *cfs_rq, struct sched_entity *se)
{
	FUNC5(&cfs_rq->load, se->load.weight);
#ifdef CONFIG_SMP
	if (entity_is_task(se)) {
		account_numa_dequeue(rq_of(cfs_rq), task_of(se));
		list_del_init(&se->group_node);
	}
#endif
	cfs_rq->nr_running--;
}