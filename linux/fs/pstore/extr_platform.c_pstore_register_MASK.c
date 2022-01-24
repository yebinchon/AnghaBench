#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pstore_info {int flags; scalar_t__ name; int /*<<< orphan*/  buf_lock; int /*<<< orphan*/  read_mutex; scalar_t__ write_user; int /*<<< orphan*/  write; int /*<<< orphan*/  read; struct module* owner; } ;
struct module {int dummy; } ;
struct TYPE_3__ {scalar_t__ expires; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EPERM ; 
 int PSTORE_FLAGS_CONSOLE ; 
 int PSTORE_FLAGS_DMESG ; 
 int PSTORE_FLAGS_FTRACE ; 
 int PSTORE_FLAGS_PMSG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ backend ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct module*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,...) ; 
 struct pstore_info* psinfo ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  pstore_lock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_1__ pstore_timer ; 
 scalar_t__ pstore_update_ms ; 
 scalar_t__ pstore_write_user_compat ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct module*) ; 

int FUNC18(struct pstore_info *psi)
{
	struct module *owner = psi->owner;

	if (backend && FUNC16(backend, psi->name)) {
		FUNC6("ignoring unexpected backend '%s'\n", psi->name);
		return -EPERM;
	}

	/* Sanity check flags. */
	if (!psi->flags) {
		FUNC6("backend '%s' must support at least one frontend\n",
			psi->name);
		return -EINVAL;
	}

	/* Check for required functions. */
	if (!psi->read || !psi->write) {
		FUNC6("backend '%s' must implement read() and write()\n",
			psi->name);
		return -EINVAL;
	}

	FUNC14(&pstore_lock);
	if (psinfo) {
		FUNC6("backend '%s' already loaded: ignoring '%s'\n",
			psinfo->name, psi->name);
		FUNC15(&pstore_lock);
		return -EBUSY;
	}

	if (!psi->write_user)
		psi->write_user = pstore_write_user_compat;
	psinfo = psi;
	FUNC4(&psinfo->read_mutex);
	FUNC13(&psinfo->buf_lock, 1);
	FUNC15(&pstore_lock);

	if (owner && !FUNC17(owner)) {
		psinfo = NULL;
		return -EINVAL;
	}

	if (psi->flags & PSTORE_FLAGS_DMESG)
		FUNC1();

	if (FUNC8())
		FUNC7(0);

	if (psi->flags & PSTORE_FLAGS_DMESG)
		FUNC11();
	if (psi->flags & PSTORE_FLAGS_CONSOLE)
		FUNC9();
	if (psi->flags & PSTORE_FLAGS_FTRACE)
		FUNC10();
	if (psi->flags & PSTORE_FLAGS_PMSG)
		FUNC12();

	/* Start watching for new records, if desired. */
	if (pstore_update_ms >= 0) {
		pstore_timer.expires = jiffies +
			FUNC3(pstore_update_ms);
		FUNC0(&pstore_timer);
	}

	/*
	 * Update the module parameter backend, so it is visible
	 * through /sys/module/pstore/parameters/backend
	 */
	backend = psi->name;

	FUNC5("Registered %s as persistent store backend\n", psi->name);

	FUNC2(owner);

	return 0;
}