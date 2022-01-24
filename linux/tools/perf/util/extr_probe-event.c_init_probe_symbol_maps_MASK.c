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
struct TYPE_2__ {int sort_by_name; int allow_aliases; scalar_t__ vmlinux_name; } ;

/* Variables and functions */
 scalar_t__ host_machine ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__ symbol_conf ; 

int FUNC5(bool user_only)
{
	int ret;

	symbol_conf.sort_by_name = true;
	symbol_conf.allow_aliases = true;
	ret = FUNC4(NULL);
	if (ret < 0) {
		FUNC1("Failed to init symbol map.\n");
		goto out;
	}

	if (host_machine || user_only)	/* already initialized */
		return 0;

	if (symbol_conf.vmlinux_name)
		FUNC1("Use vmlinux: %s\n", symbol_conf.vmlinux_name);

	host_machine = FUNC0();
	if (!host_machine) {
		FUNC1("machine__new_host() failed.\n");
		FUNC3();
		ret = -1;
	}
out:
	if (ret < 0)
		FUNC2("Failed to init vmlinux path.\n");
	return ret;
}