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
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; int /*<<< orphan*/  sd_freeze_mutex; int /*<<< orphan*/  sd_freeze_gh; int /*<<< orphan*/  sd_freeze_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDF_FS_FROZEN ; 
 scalar_t__ SFS_FROZEN ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;

	FUNC3(&sdp->sd_freeze_mutex);
        if (FUNC0(&sdp->sd_freeze_state) != SFS_FROZEN ||
	    !FUNC2(&sdp->sd_freeze_gh)) {
		FUNC4(&sdp->sd_freeze_mutex);
                return 0;
	}

	FUNC1(&sdp->sd_freeze_gh);
	FUNC4(&sdp->sd_freeze_mutex);
	return FUNC5(&sdp->sd_flags, SDF_FS_FROZEN, TASK_INTERRUPTIBLE);
}