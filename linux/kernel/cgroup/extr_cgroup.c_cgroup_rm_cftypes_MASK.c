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
struct cftype {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  cgroup_mutex ; 
 int FUNC0 (struct cftype*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct cftype *cfts)
{
	int ret;

	FUNC1(&cgroup_mutex);
	ret = FUNC0(cfts);
	FUNC2(&cgroup_mutex);
	return ret;
}