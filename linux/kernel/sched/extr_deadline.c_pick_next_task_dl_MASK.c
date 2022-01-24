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
struct sched_dl_entity {int dummy; } ;
struct rq_flags {int dummy; } ;
struct dl_rq {int dummy; } ;
struct rq {struct dl_rq dl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct task_struct* FUNC2 (struct sched_dl_entity*) ; 
 struct sched_dl_entity* FUNC3 (struct rq*,struct dl_rq*) ; 
 int /*<<< orphan*/  FUNC4 (struct rq*) ; 
 int /*<<< orphan*/  FUNC5 (struct rq*,struct task_struct*) ; 

__attribute__((used)) static struct task_struct *
FUNC6(struct rq *rq, struct task_struct *prev, struct rq_flags *rf)
{
	struct sched_dl_entity *dl_se;
	struct dl_rq *dl_rq = &rq->dl;
	struct task_struct *p;

	FUNC1(prev || rf);

	if (!FUNC4(rq))
		return NULL;

	dl_se = FUNC3(rq, dl_rq);
	FUNC0(!dl_se);
	p = FUNC2(dl_se);
	FUNC5(rq, p);
	return p;
}