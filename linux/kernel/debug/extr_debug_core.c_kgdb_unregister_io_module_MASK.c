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
struct kgdb_io {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct kgdb_io* dbg_io_ops ; 
 int /*<<< orphan*/  kgdb_connected ; 
 int /*<<< orphan*/  kgdb_registration_lock ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct kgdb_io *old_dbg_io_ops)
{
	FUNC0(kgdb_connected);

	/*
	 * KGDB is no longer able to communicate out, so
	 * unregister our callbacks and reset state.
	 */
	FUNC2();

	FUNC4(&kgdb_registration_lock);

	FUNC1(dbg_io_ops != old_dbg_io_ops);
	dbg_io_ops = NULL;

	FUNC5(&kgdb_registration_lock);

	FUNC3("Unregistered I/O driver %s, debugger disabled\n",
		old_dbg_io_ops->name);
}