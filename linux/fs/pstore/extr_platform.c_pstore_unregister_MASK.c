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
struct pstore_info {int flags; } ;

/* Variables and functions */
 int PSTORE_FLAGS_CONSOLE ; 
 int PSTORE_FLAGS_DMESG ; 
 int PSTORE_FLAGS_FTRACE ; 
 int PSTORE_FLAGS_PMSG ; 
 int /*<<< orphan*/ * backend ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * psinfo ; 
 int /*<<< orphan*/  pstore_timer ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int pstore_update_ms ; 
 int /*<<< orphan*/  pstore_work ; 

void FUNC7(struct pstore_info *psi)
{
	/* Stop timer and make sure all work has finished. */
	pstore_update_ms = -1;
	FUNC0(&pstore_timer);
	FUNC1(&pstore_work);

	if (psi->flags & PSTORE_FLAGS_PMSG)
		FUNC6();
	if (psi->flags & PSTORE_FLAGS_FTRACE)
		FUNC4();
	if (psi->flags & PSTORE_FLAGS_CONSOLE)
		FUNC3();
	if (psi->flags & PSTORE_FLAGS_DMESG)
		FUNC5();

	FUNC2();

	psinfo = NULL;
	backend = NULL;
}