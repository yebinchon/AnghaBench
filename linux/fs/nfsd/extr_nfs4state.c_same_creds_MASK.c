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
struct svc_cred {scalar_t__ cr_principal; int /*<<< orphan*/  cr_group_info; int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct svc_cred*) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5(struct svc_cred *cr1, struct svc_cred *cr2)
{
	if ((FUNC2(cr1) != FUNC2(cr2))
		|| (!FUNC4(cr1->cr_uid, cr2->cr_uid))
		|| (!FUNC0(cr1->cr_gid, cr2->cr_gid))
		|| !FUNC1(cr1->cr_group_info, cr2->cr_group_info))
		return false;
	/* XXX: check that cr_targ_princ fields match ? */
	if (cr1->cr_principal == cr2->cr_principal)
		return true;
	if (!cr1->cr_principal || !cr2->cr_principal)
		return false;
	return 0 == FUNC3(cr1->cr_principal, cr2->cr_principal);
}