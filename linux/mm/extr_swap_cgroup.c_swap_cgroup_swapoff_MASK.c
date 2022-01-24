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
struct swap_cgroup_ctrl {unsigned long length; struct page** map; } ;
struct page {int dummy; } ;

/* Variables and functions */
 unsigned long SWAP_CLUSTER_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  do_swap_account ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ; 
 int /*<<< orphan*/  swap_cgroup_mutex ; 
 int /*<<< orphan*/  FUNC4 (struct page**) ; 

void FUNC5(int type)
{
	struct page **map;
	unsigned long i, length;
	struct swap_cgroup_ctrl *ctrl;

	if (!do_swap_account)
		return;

	FUNC2(&swap_cgroup_mutex);
	ctrl = &swap_cgroup_ctrl[type];
	map = ctrl->map;
	length = ctrl->length;
	ctrl->map = NULL;
	ctrl->length = 0;
	FUNC3(&swap_cgroup_mutex);

	if (map) {
		for (i = 0; i < length; i++) {
			struct page *page = map[i];
			if (page)
				FUNC0(page);
			if (!(i % SWAP_CLUSTER_MAX))
				FUNC1();
		}
		FUNC4(map);
	}
}