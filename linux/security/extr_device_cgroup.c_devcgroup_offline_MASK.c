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
struct dev_cgroup {int /*<<< orphan*/  behavior; } ;
struct cgroup_subsys_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVCG_DEFAULT_NONE ; 
 struct dev_cgroup* FUNC0 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  devcgroup_mutex ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct cgroup_subsys_state *css)
{
	struct dev_cgroup *dev_cgroup = FUNC0(css);

	FUNC1(&devcgroup_mutex);
	dev_cgroup->behavior = DEVCG_DEFAULT_NONE;
	FUNC2(&devcgroup_mutex);
}