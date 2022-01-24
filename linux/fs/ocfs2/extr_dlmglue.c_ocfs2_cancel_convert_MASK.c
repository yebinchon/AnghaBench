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
struct ocfs2_super {int /*<<< orphan*/  cconn; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_name; int /*<<< orphan*/  l_lksb; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_CANCEL ; 
 int /*<<< orphan*/  ML_BASTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
				struct ocfs2_lock_res *lockres)
{
	int ret;

	ret = FUNC1(osb->cconn, &lockres->l_lksb,
			       DLM_LKF_CANCEL);
	if (ret) {
		FUNC2("ocfs2_dlm_unlock", ret, lockres);
		FUNC3(lockres, 0);
	}

	FUNC0(ML_BASTS, "lockres %s\n", lockres->l_name);

	return ret;
}