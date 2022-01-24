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
typedef  int u32 ;
struct rb_root {int dummy; } ;
struct fq_sched_data {int fq_trees_log; struct rb_root* fq_root; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 struct rb_root RB_ROOT ; 
 int __GFP_RETRY_MAYFAIL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct fq_sched_data*,void*,int,struct rb_root*,int) ; 
 struct rb_root* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fq_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, u32 log)
{
	struct fq_sched_data *q = FUNC4(sch);
	struct rb_root *array;
	void *old_fq_root;
	u32 idx;

	if (q->fq_root && log == q->fq_trees_log)
		return 0;

	/* If XPS was setup, we can allocate memory on right NUMA node */
	array = FUNC2(sizeof(struct rb_root) << log, GFP_KERNEL | __GFP_RETRY_MAYFAIL,
			      FUNC3(sch->dev_queue));
	if (!array)
		return -ENOMEM;

	for (idx = 0; idx < (1U << log); idx++)
		array[idx] = RB_ROOT;

	FUNC5(sch);

	old_fq_root = q->fq_root;
	if (old_fq_root)
		FUNC1(q, old_fq_root, q->fq_trees_log, array, log);

	q->fq_root = array;
	q->fq_trees_log = log;

	FUNC6(sch);

	FUNC0(old_fq_root);

	return 0;
}