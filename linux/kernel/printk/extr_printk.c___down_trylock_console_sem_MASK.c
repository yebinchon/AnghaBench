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
 int /*<<< orphan*/  console_lock_dep_map ; 
 int /*<<< orphan*/  console_sem ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

__attribute__((used)) static int FUNC4(unsigned long ip)
{
	int lock_failed;
	unsigned long flags;

	/*
	 * Here and in __up_console_sem() we need to be in safe mode,
	 * because spindump/WARN/etc from under console ->lock will
	 * deadlock in printk()->down_trylock_console_sem() otherwise.
	 */
	FUNC2(flags);
	lock_failed = FUNC0(&console_sem);
	FUNC3(flags);

	if (lock_failed)
		return 1;
	FUNC1(&console_lock_dep_map, 0, 1, ip);
	return 0;
}