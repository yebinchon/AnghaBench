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
struct sched_dl_entity {int /*<<< orphan*/  rb_node; } ;
struct dl_rq {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_dl_entity*,struct dl_rq*) ; 
 struct dl_rq* FUNC3 (struct sched_dl_entity*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sched_dl_entity *dl_se)
{
	struct dl_rq *dl_rq = FUNC3(dl_se);

	if (FUNC1(&dl_se->rb_node))
		return;

	FUNC4(&dl_se->rb_node, &dl_rq->root);
	FUNC0(&dl_se->rb_node);

	FUNC2(dl_se, dl_rq);
}