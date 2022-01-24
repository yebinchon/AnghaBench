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
struct freezer {int state; } ;
struct cgroup_subsys_state {int dummy; } ;

/* Variables and functions */
 int CGROUP_FREEZER_ONLINE ; 
 int CGROUP_FREEZING ; 
 int CGROUP_FREEZING_PARENT ; 
 int CGROUP_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct freezer* FUNC1 (struct cgroup_subsys_state*) ; 
 int /*<<< orphan*/  freezer_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct freezer* FUNC4 (struct freezer*) ; 
 int /*<<< orphan*/  system_freezing_cnt ; 

__attribute__((used)) static int FUNC5(struct cgroup_subsys_state *css)
{
	struct freezer *freezer = FUNC1(css);
	struct freezer *parent = FUNC4(freezer);

	FUNC2(&freezer_mutex);

	freezer->state |= CGROUP_FREEZER_ONLINE;

	if (parent && (parent->state & CGROUP_FREEZING)) {
		freezer->state |= CGROUP_FREEZING_PARENT | CGROUP_FROZEN;
		FUNC0(&system_freezing_cnt);
	}

	FUNC3(&freezer_mutex);
	return 0;
}