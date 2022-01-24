#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dqi_sb; } ;
struct ocfs2_lock_res {int dummy; } ;
struct ocfs2_mem_dqinfo {TYPE_1__ dqi_gi; struct ocfs2_lock_res dqi_gqlock; } ;

/* Variables and functions */
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int EROFS ; 
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_lock_res*,int) ; 
 scalar_t__ FUNC4 (struct ocfs2_super*) ; 
 scalar_t__ FUNC5 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_mem_dqinfo*,int) ; 
 int FUNC7 (struct ocfs2_mem_dqinfo*) ; 
 int /*<<< orphan*/  FUNC8 (struct ocfs2_lock_res*) ; 

int FUNC9(struct ocfs2_mem_dqinfo *oinfo, int ex)
{
	struct ocfs2_lock_res *lockres = &oinfo->dqi_gqlock;
	struct ocfs2_super *osb = FUNC0(oinfo->dqi_gi.dqi_sb);
	int level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	int status = 0;

	/* On RO devices, locking really isn't needed... */
	if (FUNC4(osb)) {
		if (ex)
			status = -EROFS;
		goto bail;
	}
	if (FUNC5(osb))
		goto bail;

	status = FUNC2(osb, lockres, level, 0, 0);
	if (status < 0) {
		FUNC1(status);
		goto bail;
	}
	if (!FUNC8(lockres))
		goto bail;
	/* OK, we have the lock but we need to refresh the quota info */
	status = FUNC7(oinfo);
	if (status)
		FUNC6(oinfo, ex);
	FUNC3(lockres, status);
bail:
	return status;
}