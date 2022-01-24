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
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_FEATURE_LOGINUID_IMMUTABLE ; 
 int /*<<< orphan*/  AUDIT_FEATURE_ONLY_UNSET_LOGINUID ; 
 int /*<<< orphan*/  CAP_AUDIT_CONTROL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(kuid_t loginuid)
{
	/* if we are unset, we don't need privs */
	if (!FUNC0(current))
		return 0;
	/* if AUDIT_FEATURE_LOGINUID_IMMUTABLE means never ever allow a change*/
	if (FUNC2(AUDIT_FEATURE_LOGINUID_IMMUTABLE))
		return -EPERM;
	/* it is set, you need permission */
	if (!FUNC1(CAP_AUDIT_CONTROL))
		return -EPERM;
	/* reject if this is not an unset and we don't allow that */
	if (FUNC2(AUDIT_FEATURE_ONLY_UNSET_LOGINUID)
				 && FUNC3(loginuid))
		return -EPERM;
	return 0;
}