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
struct cftype {int /*<<< orphan*/  node; int /*<<< orphan*/  ss; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct cftype*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cftype*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct cftype *cfts)
{
	FUNC3(&cgroup_mutex);

	if (!cfts || !cfts[0].ss)
		return -ENOENT;

	FUNC2(&cfts->node);
	FUNC0(cfts, false);
	FUNC1(cfts);
	return 0;
}