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
struct sched_entity {TYPE_1__* parent; scalar_t__ depth; } ;
struct cfs_rq {int dummy; } ;
struct TYPE_2__ {scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATTACH_AGE_LOAD ; 
 int /*<<< orphan*/  SKIP_AGE_LOAD ; 
 int /*<<< orphan*/  FUNC0 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 struct cfs_rq* FUNC1 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_entity*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct cfs_rq*,int) ; 

__attribute__((used)) static void FUNC6(struct sched_entity *se)
{
	struct cfs_rq *cfs_rq = FUNC1(se);

#ifdef CONFIG_FAIR_GROUP_SCHED
	/*
	 * Since the real-depth could have been changed (only FAIR
	 * class maintain depth value), reset depth properly.
	 */
	se->depth = se->parent ? se->parent->depth + 1 : 0;
#endif

	/* Synchronize entity with its cfs_rq */
	FUNC4(cfs_rq, se, FUNC3(ATTACH_AGE_LOAD) ? 0 : SKIP_AGE_LOAD);
	FUNC0(cfs_rq, se, 0);
	FUNC5(cfs_rq, false);
	FUNC2(se);
}