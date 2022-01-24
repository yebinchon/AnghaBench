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
struct gfs2_tune {int /*<<< orphan*/  gt_quota_quantum; int /*<<< orphan*/  gt_statfs_quantum; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_quota_wait; scalar_t__ sd_statfs_force_sync; int /*<<< orphan*/  sd_trunc_lock; int /*<<< orphan*/  sd_trunc_list; int /*<<< orphan*/  sd_vfs; struct gfs2_tune sd_tune; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long HZ ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned long FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gt_statfs_quantum ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*,char*,int (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ),unsigned long,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*,char*,int) ; 
 scalar_t__ FUNC12 (unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  wait ; 

int FUNC16(void *data)
{
	struct gfs2_sbd *sdp = data;
	struct gfs2_tune *tune = &sdp->sd_tune;
	unsigned long statfs_timeo = 0;
	unsigned long quotad_timeo = 0;
	unsigned long t = 0;
	FUNC0(wait);
	int empty;

	while (!FUNC5()) {

		/* Update the master statfs file */
		if (sdp->sd_statfs_force_sync) {
			int error = FUNC3(sdp->sd_vfs, 0);
			FUNC11(sdp, "statfs", error);
			statfs_timeo = FUNC4(sdp, gt_statfs_quantum) * HZ;
		}
		else
			FUNC9(sdp, "statfs", gfs2_statfs_sync, t,
				   	   &statfs_timeo,
					   &tune->gt_statfs_quantum);

		/* Update quota file */
		FUNC9(sdp, "sync", gfs2_quota_sync, t,
				   &quotad_timeo, &tune->gt_quota_quantum);

		/* Check for & recover partially truncated inodes */
		FUNC10(sdp);

		FUNC15();

		t = FUNC7(quotad_timeo, statfs_timeo);

		FUNC8(&sdp->sd_quota_wait, &wait, TASK_INTERRUPTIBLE);
		FUNC13(&sdp->sd_trunc_lock);
		empty = FUNC6(&sdp->sd_trunc_list);
		FUNC14(&sdp->sd_trunc_lock);
		if (empty && !sdp->sd_statfs_force_sync)
			t -= FUNC12(t);
		else
			t = 0;
		FUNC1(&sdp->sd_quota_wait, &wait);
	}

	return 0;
}