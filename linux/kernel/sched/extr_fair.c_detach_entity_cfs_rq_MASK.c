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
struct sched_entity {int dummy; } ;
struct cfs_rq {int dummy; } ;

/* Variables and functions */
 struct cfs_rq* FUNC0 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfs_rq*,struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_entity*) ; 
 int /*<<< orphan*/  FUNC3 (struct cfs_rq*,struct sched_entity*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cfs_rq*,int) ; 

__attribute__((used)) static void FUNC5(struct sched_entity *se)
{
	struct cfs_rq *cfs_rq = FUNC0(se);

	/* Catch up with the cfs_rq and remove our load when we leave */
	FUNC3(cfs_rq, se, 0);
	FUNC1(cfs_rq, se);
	FUNC4(cfs_rq, false);
	FUNC2(se);
}