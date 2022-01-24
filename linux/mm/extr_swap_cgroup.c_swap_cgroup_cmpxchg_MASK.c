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
struct swap_cgroup_ctrl {int /*<<< orphan*/  lock; } ;
struct swap_cgroup {unsigned short id; } ;

/* Variables and functions */
 struct swap_cgroup* FUNC0 (int /*<<< orphan*/ ,struct swap_cgroup_ctrl**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

unsigned short FUNC3(swp_entry_t ent,
					unsigned short old, unsigned short new)
{
	struct swap_cgroup_ctrl *ctrl;
	struct swap_cgroup *sc;
	unsigned long flags;
	unsigned short retval;

	sc = FUNC0(ent, &ctrl);

	FUNC1(&ctrl->lock, flags);
	retval = sc->id;
	if (retval == old)
		sc->id = new;
	else
		retval = 0;
	FUNC2(&ctrl->lock, flags);
	return retval;
}