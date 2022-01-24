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

/* Variables and functions */
 int CGROUP_FREEZER_ONLINE ; 
 int CGROUP_FREEZING ; 
 int CGROUP_FROZEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct freezer*) ; 
 int /*<<< orphan*/  freezer_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  system_freezing_cnt ; 
 int /*<<< orphan*/  FUNC4 (struct freezer*) ; 

__attribute__((used)) static void FUNC5(struct freezer *freezer, bool freeze,
				unsigned int state)
{
	/* also synchronizes against task migration, see freezer_attach() */
	FUNC3(&freezer_mutex);

	if (!(freezer->state & CGROUP_FREEZER_ONLINE))
		return;

	if (freeze) {
		if (!(freezer->state & CGROUP_FREEZING))
			FUNC1(&system_freezing_cnt);
		freezer->state |= state;
		FUNC2(freezer);
	} else {
		bool was_freezing = freezer->state & CGROUP_FREEZING;

		freezer->state &= ~state;

		if (!(freezer->state & CGROUP_FREEZING)) {
			if (was_freezing)
				FUNC0(&system_freezing_cnt);
			freezer->state &= ~CGROUP_FROZEN;
			FUNC4(freezer);
		}
	}
}