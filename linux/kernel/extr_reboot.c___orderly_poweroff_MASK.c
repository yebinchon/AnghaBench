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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  poweroff_cmd ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(bool force)
{
	int ret;

	ret = FUNC3(poweroff_cmd);

	if (ret && force) {
		FUNC2("Failed to start orderly shutdown: forcing the issue\n");

		/*
		 * I guess this should try to kick off some daemon to sync and
		 * poweroff asap.  Or not even bother syncing if we're doing an
		 * emergency shutdown?
		 */
		FUNC0();
		FUNC1();
	}

	return ret;
}