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
typedef  unsigned int pgoff_t ;

/* Variables and functions */
 unsigned int SC_PER_PAGE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct swap_cgroup* FUNC1 (struct swap_cgroup_ctrl*,unsigned int) ; 
 struct swap_cgroup* FUNC2 (int /*<<< orphan*/ ,struct swap_cgroup_ctrl**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 

unsigned short FUNC6(swp_entry_t ent, unsigned short id,
				  unsigned int nr_ents)
{
	struct swap_cgroup_ctrl *ctrl;
	struct swap_cgroup *sc;
	unsigned short old;
	unsigned long flags;
	pgoff_t offset = FUNC5(ent);
	pgoff_t end = offset + nr_ents;

	sc = FUNC2(ent, &ctrl);

	FUNC3(&ctrl->lock, flags);
	old = sc->id;
	for (;;) {
		FUNC0(sc->id != old);
		sc->id = id;
		offset++;
		if (offset == end)
			break;
		if (offset % SC_PER_PAGE)
			sc++;
		else
			sc = FUNC1(ctrl, offset);
	}
	FUNC4(&ctrl->lock, flags);

	return old;
}