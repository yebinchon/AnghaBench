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
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_super {struct ocfs2_lock_res osb_super_lockres; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 
 int FUNC6 (struct ocfs2_super*) ; 
 int FUNC7 (struct ocfs2_lock_res*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_lock_res*) ; 

int FUNC9(struct ocfs2_super *osb,
		     int ex)
{
	int status = 0;
	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	struct ocfs2_lock_res *lockres = &osb->osb_super_lockres;

	if (FUNC4(osb))
		return -EROFS;

	if (FUNC5(osb))
		goto bail;

	status = FUNC1(osb, lockres, level, 0, 0);
	if (status < 0) {
		FUNC0(status);
		goto bail;
	}

	/* The super block lock path is really in the best position to
	 * know when resources covered by the lock need to be
	 * refreshed, so we do it here. Of course, making sense of
	 * everything is up to the caller :) */
	status = FUNC7(lockres);
	if (status) {
		status = FUNC6(osb);

		FUNC3(lockres, status);

		if (status < 0) {
			FUNC2(osb, lockres, level);
			FUNC0(status);
		}
		FUNC8(lockres);
	}
bail:
	return status;
}