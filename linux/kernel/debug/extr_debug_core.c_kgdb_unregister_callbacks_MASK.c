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
 int /*<<< orphan*/  dbg_module_load_nb ; 
 int /*<<< orphan*/  dbg_reboot_notifier ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ kgdb_con_registered ; 
 scalar_t__ kgdb_io_module_registered ; 
 int /*<<< orphan*/  kgdbcons ; 
 int /*<<< orphan*/  sysrq_dbg_op ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(void)
{
	/*
	 * When this routine is called KGDB should unregister from
	 * handlers and clean up, making sure it is not handling any
	 * break exceptions at the time.
	 */
	if (kgdb_io_module_registered) {
		kgdb_io_module_registered = 0;
		FUNC3(&dbg_reboot_notifier);
		FUNC2(&dbg_module_load_nb);
		FUNC0();
#ifdef CONFIG_MAGIC_SYSRQ
		unregister_sysrq_key('g', &sysrq_dbg_op);
#endif
		if (kgdb_con_registered) {
			FUNC1(&kgdbcons);
			kgdb_con_registered = 0;
		}
	}
}