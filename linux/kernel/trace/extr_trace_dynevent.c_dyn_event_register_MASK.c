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
struct dyn_event_operations {int /*<<< orphan*/  list; int /*<<< orphan*/  match; int /*<<< orphan*/  free; int /*<<< orphan*/  is_busy; int /*<<< orphan*/  show; int /*<<< orphan*/  create; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dyn_event_ops_list ; 
 int /*<<< orphan*/  dyn_event_ops_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct dyn_event_operations *ops)
{
	if (!ops || !ops->create || !ops->show || !ops->is_busy ||
	    !ops->free || !ops->match)
		return -EINVAL;

	FUNC0(&ops->list);
	FUNC2(&dyn_event_ops_mutex);
	FUNC1(&ops->list, &dyn_event_ops_list);
	FUNC3(&dyn_event_ops_mutex);
	return 0;
}