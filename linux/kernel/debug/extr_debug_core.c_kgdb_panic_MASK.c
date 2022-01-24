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
 scalar_t__ dbg_kdb_mode ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  kgdb_io_module_registered ; 
 scalar_t__ panic_timeout ; 

void FUNC2(const char *msg)
{
	if (!kgdb_io_module_registered)
		return;

	/*
	 * We don't want to get stuck waiting for input from user if
	 * "panic_timeout" indicates the system should automatically
	 * reboot on panic.
	 */
	if (panic_timeout)
		return;

	if (dbg_kdb_mode)
		FUNC0("PANIC: %s\n", msg);

	FUNC1();
}