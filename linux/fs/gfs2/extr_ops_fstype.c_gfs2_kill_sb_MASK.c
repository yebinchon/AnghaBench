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
struct gfs2_sbd {int /*<<< orphan*/ * sd_master_dir; int /*<<< orphan*/ * sd_root_dir; } ;

/* Variables and functions */
 int GFS2_LFC_KILL_SB ; 
 int GFS2_LOG_HEAD_FLUSH_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct gfs2_sbd *sdp = sb->s_fs_info;

	if (sdp == NULL) {
		FUNC2(sb);
		return;
	}

	FUNC1(sdp, NULL, GFS2_LOG_HEAD_FLUSH_SYNC | GFS2_LFC_KILL_SB);
	FUNC0(sdp->sd_root_dir);
	FUNC0(sdp->sd_master_dir);
	sdp->sd_root_dir = NULL;
	sdp->sd_master_dir = NULL;
	FUNC3(sb);
	FUNC2(sb);
}