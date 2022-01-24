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
struct super_block {int s_flags; struct gfs2_sbd* s_fs_info; } ;
struct gfs2_tune {int gt_statfs_slow; int gt_statfs_quantum; int /*<<< orphan*/  gt_spin; int /*<<< orphan*/  gt_quota_quantum; int /*<<< orphan*/  gt_logd_secs; } ;
struct gfs2_args {int ar_statfs_quantum; scalar_t__ ar_spectator; scalar_t__ ar_localflocks; scalar_t__ ar_meta; int /*<<< orphan*/  ar_quota_quantum; int /*<<< orphan*/  ar_commit; scalar_t__ ar_nobarrier; scalar_t__ ar_posix_acl; int /*<<< orphan*/  ar_hostdata; int /*<<< orphan*/  ar_locktable; int /*<<< orphan*/  ar_lockproto; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; struct gfs2_args sd_args; struct gfs2_tune sd_tune; } ;
struct fs_context {int sb_flags; struct gfs2_args* fs_private; TYPE_1__* root; } ;
struct TYPE_2__ {struct super_block* d_sb; } ;

/* Variables and functions */
 int EINVAL ; 
 int SB_POSIXACL ; 
 int SB_RDONLY ; 
 int /*<<< orphan*/  SDF_NOBARRIERS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fs_context*,char*) ; 
 int FUNC2 (struct gfs2_sbd*) ; 
 int FUNC3 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 

__attribute__((used)) static int FUNC10(struct fs_context *fc)
{
	struct super_block *sb = fc->root->d_sb;
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_args *oldargs = &sdp->sd_args;
	struct gfs2_args *newargs = fc->fs_private;
	struct gfs2_tune *gt = &sdp->sd_tune;
	int error = 0;

	FUNC9(sb);

	FUNC6(&gt->gt_spin);
	oldargs->ar_commit = gt->gt_logd_secs;
	oldargs->ar_quota_quantum = gt->gt_quota_quantum;
	if (gt->gt_statfs_slow)
		oldargs->ar_statfs_quantum = 0;
	else
		oldargs->ar_statfs_quantum = gt->gt_statfs_quantum;
	FUNC7(&gt->gt_spin);

	if (FUNC8(newargs->ar_lockproto, oldargs->ar_lockproto)) {
		FUNC1(fc, "gfs2: reconfiguration of locking protocol not allowed");
		return -EINVAL;
	}
	if (FUNC8(newargs->ar_locktable, oldargs->ar_locktable)) {
		FUNC1(fc, "gfs2: reconfiguration of lock table not allowed");
		return -EINVAL;
	}
	if (FUNC8(newargs->ar_hostdata, oldargs->ar_hostdata)) {
		FUNC1(fc, "gfs2: reconfiguration of host data not allowed");
		return -EINVAL;
	}
	if (newargs->ar_spectator != oldargs->ar_spectator) {
		FUNC1(fc, "gfs2: reconfiguration of spectator mode not allowed");
		return -EINVAL;
	}
	if (newargs->ar_localflocks != oldargs->ar_localflocks) {
		FUNC1(fc, "gfs2: reconfiguration of localflocks not allowed");
		return -EINVAL;
	}
	if (newargs->ar_meta != oldargs->ar_meta) {
		FUNC1(fc, "gfs2: switching between gfs2 and gfs2meta not allowed");
		return -EINVAL;
	}
	if (oldargs->ar_spectator)
		fc->sb_flags |= SB_RDONLY;

	if ((sb->s_flags ^ fc->sb_flags) & SB_RDONLY) {
		if (fc->sb_flags & SB_RDONLY) {
			error = FUNC2(sdp);
			if (error)
				FUNC1(fc, "gfs2: unable to remount read-only");
		} else {
			error = FUNC3(sdp);
			if (error)
				FUNC1(fc, "gfs2: unable to remount read-write");
		}
	}
	sdp->sd_args = *newargs;

	if (sdp->sd_args.ar_posix_acl)
		sb->s_flags |= SB_POSIXACL;
	else
		sb->s_flags &= ~SB_POSIXACL;
	if (sdp->sd_args.ar_nobarrier)
		FUNC5(SDF_NOBARRIERS, &sdp->sd_flags);
	else
		FUNC0(SDF_NOBARRIERS, &sdp->sd_flags);
	FUNC6(&gt->gt_spin);
	gt->gt_logd_secs = newargs->ar_commit;
	gt->gt_quota_quantum = newargs->ar_quota_quantum;
	if (newargs->ar_statfs_quantum) {
		gt->gt_statfs_slow = 0;
		gt->gt_statfs_quantum = newargs->ar_statfs_quantum;
	}
	else {
		gt->gt_statfs_slow = 1;
		gt->gt_statfs_quantum = 30;
	}
	FUNC7(&gt->gt_spin);

	FUNC4(sdp);
	return error;
}