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
struct cgroup_root {int hierarchy_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cgroup_hierarchy_idr ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int FUNC0 (int /*<<< orphan*/ *,struct cgroup_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct cgroup_root *root)
{
	int id;

	FUNC1(&cgroup_mutex);

	id = FUNC0(&cgroup_hierarchy_idr, root, 0, 0, GFP_KERNEL);
	if (id < 0)
		return id;

	root->hierarchy_id = id;
	return 0;
}