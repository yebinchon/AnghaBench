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
typedef  int /*<<< orphan*/  swp_entry_t ;
struct swap_cgroup_ctrl {int dummy; } ;
struct swap_cgroup {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 struct swap_cgroup* FUNC0 (struct swap_cgroup_ctrl*,int /*<<< orphan*/ ) ; 
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct swap_cgroup *FUNC3(swp_entry_t ent,
					struct swap_cgroup_ctrl **ctrlp)
{
	pgoff_t offset = FUNC1(ent);
	struct swap_cgroup_ctrl *ctrl;

	ctrl = &swap_cgroup_ctrl[FUNC2(ent)];
	if (ctrlp)
		*ctrlp = ctrl;
	return FUNC0(ctrl, offset);
}