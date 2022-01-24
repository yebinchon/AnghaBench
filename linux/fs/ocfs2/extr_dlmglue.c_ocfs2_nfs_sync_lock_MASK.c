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
struct ocfs2_super {struct ocfs2_lock_res osb_nfs_sync_lockres; } ;

/* Variables and functions */
 int EROFS ; 
 int /*<<< orphan*/  LKM_EXMODE ; 
 int /*<<< orphan*/  LKM_PRMODE ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct ocfs2_super*,struct ocfs2_lock_res*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ocfs2_super*) ; 
 scalar_t__ FUNC3 (struct ocfs2_super*) ; 

int FUNC4(struct ocfs2_super *osb, int ex)
{
	int status;
	struct ocfs2_lock_res *lockres = &osb->osb_nfs_sync_lockres;

	if (FUNC2(osb))
		return -EROFS;

	if (FUNC3(osb))
		return 0;

	status = FUNC1(osb, lockres, ex ? LKM_EXMODE : LKM_PRMODE,
				    0, 0);
	if (status < 0)
		FUNC0(ML_ERROR, "lock on nfs sync lock failed %d\n", status);

	return status;
}