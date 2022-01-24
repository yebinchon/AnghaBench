#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/ * ops; } ;
struct cgroup_namespace {TYPE_1__ ns; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct cgroup_namespace* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  cgroupns_operations ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup_namespace*) ; 
 struct cgroup_namespace* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct cgroup_namespace *FUNC5(void)
{
	struct cgroup_namespace *new_ns;
	int ret;

	new_ns = FUNC2(sizeof(struct cgroup_namespace), GFP_KERNEL);
	if (!new_ns)
		return FUNC0(-ENOMEM);
	ret = FUNC3(&new_ns->ns);
	if (ret) {
		FUNC1(new_ns);
		return FUNC0(ret);
	}
	FUNC4(&new_ns->count, 1);
	new_ns->ns.ops = &cgroupns_operations;
	return new_ns;
}