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
struct notifier_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FULLSTOP_DONTSTOP ; 
 int /*<<< orphan*/  FULLSTOP_SHUTDOWN ; 
 int NOTIFY_DONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fullstop ; 
 int /*<<< orphan*/  fullstop_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(struct notifier_block *unused1,
				   unsigned long unused2, void *unused3)
{
	FUNC3(&fullstop_mutex);
	if (FUNC0(fullstop) == FULLSTOP_DONTSTOP) {
		FUNC1("Unscheduled system shutdown detected");
		FUNC2(fullstop, FULLSTOP_SHUTDOWN);
	} else {
		FUNC5("Concurrent rmmod and shutdown illegal!\n");
	}
	FUNC4(&fullstop_mutex);
	return NOTIFY_DONE;
}