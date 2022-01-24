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
struct linux_binprm {int /*<<< orphan*/  filename; struct cred* cred; } ;
struct cred {int /*<<< orphan*/  cap_inheritable; int /*<<< orphan*/  cap_bset; int /*<<< orphan*/  cap_permitted; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct cred*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct cred*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct cred*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cred* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct linux_binprm *bprm, bool has_fcap,
				   bool *effective, kuid_t root_uid)
{
	const struct cred *old = FUNC4();
	struct cred *new = bprm->cred;

	if (!FUNC5())
		return;
	/*
	 * If the legacy file capability is set, then don't set privs
	 * for a setuid root binary run by a non-root user.  Do set it
	 * for a root user just to cause least surprise to an admin.
	 */
	if (has_fcap && FUNC2(root_uid, new)) {
		FUNC6(bprm->filename);
		return;
	}
	/*
	 * To support inheritance of root-permissions and suid-root
	 * executables under compatibility mode, we override the
	 * capability sets for the file.
	 */
	if (FUNC0(root_uid, new) || FUNC1(root_uid, new)) {
		/* pP' = (cap_bset & ~0) | (pI & ~0) */
		new->cap_permitted = FUNC3(old->cap_bset,
						 old->cap_inheritable);
	}
	/*
	 * If only the real uid is 0, we do not set the effective bit.
	 */
	if (FUNC0(root_uid, new))
		*effective = true;
}