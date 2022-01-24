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
struct dev_cgroup {int /*<<< orphan*/  behavior; int /*<<< orphan*/  exceptions; } ;
struct cgroup_subsys_state {struct cgroup_subsys_state* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCG_DEFAULT_ALLOW ; 
 struct dev_cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  devcgroup_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cgroup_subsys_state *css)
{
	struct dev_cgroup *dev_cgroup = FUNC0(css);
	struct dev_cgroup *parent_dev_cgroup = FUNC0(css->parent);
	int ret = 0;

	FUNC2(&devcgroup_mutex);

	if (parent_dev_cgroup == NULL)
		dev_cgroup->behavior = DEVCG_DEFAULT_ALLOW;
	else {
		ret = FUNC1(&dev_cgroup->exceptions,
					  &parent_dev_cgroup->exceptions);
		if (!ret)
			dev_cgroup->behavior = parent_dev_cgroup->behavior;
	}
	FUNC3(&devcgroup_mutex);

	return ret;
}