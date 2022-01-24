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
struct cred {int /*<<< orphan*/  fsuid; int /*<<< orphan*/  suid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  INVALID_UID ; 
 scalar_t__ SIDPOL_DEFAULT ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cred const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct cred *new,
				     const struct cred *old,
				     int flags)
{

	/* Do nothing if there are no setuid restrictions for our old RUID. */
	if (FUNC1(old->uid, INVALID_UID) == SIDPOL_DEFAULT)
		return 0;

	if (FUNC2(old, new->uid) &&
	    FUNC2(old, new->euid) &&
	    FUNC2(old, new->suid) &&
	    FUNC2(old, new->fsuid))
		return 0;

	/*
	 * Kill this process to avoid potential security vulnerabilities
	 * that could arise from a missing whitelist entry preventing a
	 * privileged process from dropping to a lesser-privileged one.
	 */
	FUNC0(SIGKILL);
	return -EACCES;
}