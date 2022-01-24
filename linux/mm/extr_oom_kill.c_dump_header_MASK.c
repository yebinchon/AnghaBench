#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct oom_control {int /*<<< orphan*/  nodemask; int /*<<< orphan*/  memcg; scalar_t__ order; int /*<<< orphan*/  gfp_mask; } ;
struct TYPE_4__ {TYPE_1__* signal; int /*<<< orphan*/  comm; } ;
struct TYPE_3__ {int /*<<< orphan*/  oom_score_adj; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_COMPACTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHOW_MEM_FILTER_NODES ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC1 (struct oom_control*,struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct oom_control*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (struct oom_control*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ sysctl_oom_dump_tasks ; 

__attribute__((used)) static void FUNC10(struct oom_control *oc, struct task_struct *p)
{
	FUNC8("%s invoked oom-killer: gfp_mask=%#x(%pGg), order=%d, oom_score_adj=%hd\n",
		current->comm, oc->gfp_mask, &oc->gfp_mask, oc->order,
			current->signal->oom_score_adj);
	if (!FUNC0(CONFIG_COMPACTION) && oc->order)
		FUNC8("COMPACTION is disabled!!!\n");

	FUNC2();
	if (FUNC6(oc))
		FUNC7(oc->memcg);
	else {
		FUNC9(SHOW_MEM_FILTER_NODES, oc->nodemask);
		if (FUNC5())
			FUNC4();
	}
	if (sysctl_oom_dump_tasks)
		FUNC3(oc);
	if (p)
		FUNC1(oc, p);
}