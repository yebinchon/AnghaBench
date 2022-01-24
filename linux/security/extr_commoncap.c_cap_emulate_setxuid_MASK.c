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
struct cred {int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_effective; int /*<<< orphan*/  euid; int /*<<< orphan*/  cap_ambient; int /*<<< orphan*/  suid; int /*<<< orphan*/  uid; int /*<<< orphan*/  user_ns; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  SECURE_KEEP_CAPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct cred *new, const struct cred *old)
{
	kuid_t root_uid = FUNC2(old->user_ns, 0);

	if ((FUNC3(old->uid, root_uid) ||
	     FUNC3(old->euid, root_uid) ||
	     FUNC3(old->suid, root_uid)) &&
	    (!FUNC3(new->uid, root_uid) &&
	     !FUNC3(new->euid, root_uid) &&
	     !FUNC3(new->suid, root_uid))) {
		if (!FUNC1(SECURE_KEEP_CAPS)) {
			FUNC0(new->cap_permitted);
			FUNC0(new->cap_effective);
		}

		/*
		 * Pre-ambient programs expect setresuid to nonroot followed
		 * by exec to drop capabilities.  We should make sure that
		 * this remains the case.
		 */
		FUNC0(new->cap_ambient);
	}
	if (FUNC3(old->euid, root_uid) && !FUNC3(new->euid, root_uid))
		FUNC0(new->cap_effective);
	if (!FUNC3(old->euid, root_uid) && FUNC3(new->euid, root_uid))
		new->cap_effective = new->cap_permitted;
}