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
typedef  int /*<<< orphan*/  u32 ;
struct linux_binprm {int /*<<< orphan*/  cred; int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPRM_CHECK ; 
 int /*<<< orphan*/  CREDS_CHECK ; 
 int /*<<< orphan*/  MAY_EXEC ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct linux_binprm *bprm)
{
	int ret;
	u32 secid;

	FUNC3(current, &secid);
	ret = FUNC1(bprm->file, FUNC0(), secid, NULL, 0,
				  MAY_EXEC, BPRM_CHECK);
	if (ret)
		return ret;

	FUNC2(bprm->cred, &secid);
	return FUNC1(bprm->file, bprm->cred, secid, NULL, 0,
				   MAY_EXEC, CREDS_CHECK);
}