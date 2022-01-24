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
struct dev_cgroup {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dev_cgroup*) ; 
 struct dev_cgroup* FUNC1 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dev_cgroup*) ; 

__attribute__((used)) static void FUNC3(struct cgroup_subsys_state *css)
{
	struct dev_cgroup *dev_cgroup = FUNC1(css);

	FUNC0(dev_cgroup);
	FUNC2(dev_cgroup);
}