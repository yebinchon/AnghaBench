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
struct swap_cgroup_ctrl {unsigned long length; int /*<<< orphan*/ * map; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SC_PER_PAGE ; 
 int /*<<< orphan*/  do_swap_account ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct swap_cgroup_ctrl* swap_cgroup_ctrl ; 
 int /*<<< orphan*/  swap_cgroup_mutex ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (unsigned long) ; 

int FUNC8(int type, unsigned long max_pages)
{
	void *array;
	unsigned long array_size;
	unsigned long length;
	struct swap_cgroup_ctrl *ctrl;

	if (!do_swap_account)
		return 0;

	length = FUNC0(max_pages, SC_PER_PAGE);
	array_size = length * sizeof(void *);

	array = FUNC7(array_size);
	if (!array)
		goto nomem;

	ctrl = &swap_cgroup_ctrl[type];
	FUNC1(&swap_cgroup_mutex);
	ctrl->length = length;
	ctrl->map = array;
	FUNC4(&ctrl->lock);
	if (FUNC5(type)) {
		/* memory shortage */
		ctrl->map = NULL;
		ctrl->length = 0;
		FUNC2(&swap_cgroup_mutex);
		FUNC6(array);
		goto nomem;
	}
	FUNC2(&swap_cgroup_mutex);

	return 0;
nomem:
	FUNC3("couldn't allocate enough memory for swap_cgroup\n");
	FUNC3("swap_cgroup can be disabled by swapaccount=0 boot option\n");
	return -ENOMEM;
}