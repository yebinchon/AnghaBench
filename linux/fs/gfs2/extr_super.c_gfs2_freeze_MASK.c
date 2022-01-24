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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_freeze_mutex; int /*<<< orphan*/  sd_flags; int /*<<< orphan*/  sd_freeze_gh; int /*<<< orphan*/  sd_freeze_state; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  SDF_FS_FROZEN ; 
 int /*<<< orphan*/  SDF_WITHDRAWN ; 
 scalar_t__ SFS_UNFROZEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,char*,...) ; 
 int FUNC2 (struct gfs2_sbd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;
	int error = 0;

	FUNC4(&sdp->sd_freeze_mutex);
	if (FUNC0(&sdp->sd_freeze_state) != SFS_UNFROZEN)
		goto out;

	if (FUNC7(SDF_WITHDRAWN, &sdp->sd_flags)) {
		error = -EINVAL;
		goto out;
	}

	for (;;) {
		error = FUNC2(sdp, &sdp->sd_freeze_gh);
		if (!error)
			break;

		if (error == -EBUSY)
			FUNC1(sdp, "waiting for recovery before freeze\n");
		else
			FUNC1(sdp, "error freezing FS: %d\n", error);

		FUNC1(sdp, "retrying...\n");
		FUNC3(1000);
	}
	FUNC6(SDF_FS_FROZEN, &sdp->sd_flags);
out:
	FUNC5(&sdp->sd_freeze_mutex);
	return error;
}