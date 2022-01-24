#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct TYPE_4__ {int gt_logd_secs; int gt_statfs_quantum; int gt_quota_quantum; scalar_t__ gt_statfs_slow; } ;
struct gfs2_args {int ar_quota; int ar_data; char const* ar_statfs_percent; int ar_errors; scalar_t__ ar_loccookie; scalar_t__ ar_rgrplvb; scalar_t__ ar_discard; scalar_t__ ar_suiddir; scalar_t__ ar_posix_acl; scalar_t__ ar_debug; scalar_t__ ar_localflocks; scalar_t__ ar_spectator; scalar_t__* ar_hostdata; scalar_t__* ar_locktable; scalar_t__* ar_lockproto; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_flags; TYPE_2__ sd_tune; int /*<<< orphan*/  sd_master_dir; struct gfs2_args sd_args; } ;
struct dentry {TYPE_1__* d_sb; } ;
struct TYPE_3__ {struct gfs2_sbd* s_fs_info; } ;

/* Variables and functions */
 int GFS2_DATA_DEFAULT ; 
#define  GFS2_DATA_ORDERED 134 
#define  GFS2_DATA_WRITEBACK 133 
 int GFS2_ERRORS_DEFAULT ; 
#define  GFS2_ERRORS_PANIC 132 
#define  GFS2_ERRORS_WITHDRAW 131 
#define  GFS2_QUOTA_ACCOUNT 130 
 int GFS2_QUOTA_DEFAULT ; 
#define  GFS2_QUOTA_OFF 129 
#define  GFS2_QUOTA_ON 128 
 int /*<<< orphan*/  SDF_DEMOTE ; 
 int /*<<< orphan*/  SDF_NOBARRIERS ; 
 scalar_t__ FUNC0 (struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,scalar_t__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct seq_file *s, struct dentry *root)
{
	struct gfs2_sbd *sdp = root->d_sb->s_fs_info;
	struct gfs2_args *args = &sdp->sd_args;
	int val;

	if (FUNC0(root, sdp->sd_master_dir))
		FUNC2(s, ",meta");
	if (args->ar_lockproto[0])
		FUNC3(s, "lockproto", args->ar_lockproto);
	if (args->ar_locktable[0])
		FUNC3(s, "locktable", args->ar_locktable);
	if (args->ar_hostdata[0])
		FUNC3(s, "hostdata", args->ar_hostdata);
	if (args->ar_spectator)
		FUNC2(s, ",spectator");
	if (args->ar_localflocks)
		FUNC2(s, ",localflocks");
	if (args->ar_debug)
		FUNC2(s, ",debug");
	if (args->ar_posix_acl)
		FUNC2(s, ",acl");
	if (args->ar_quota != GFS2_QUOTA_DEFAULT) {
		char *state;
		switch (args->ar_quota) {
		case GFS2_QUOTA_OFF:
			state = "off";
			break;
		case GFS2_QUOTA_ACCOUNT:
			state = "account";
			break;
		case GFS2_QUOTA_ON:
			state = "on";
			break;
		default:
			state = "unknown";
			break;
		}
		FUNC1(s, ",quota=%s", state);
	}
	if (args->ar_suiddir)
		FUNC2(s, ",suiddir");
	if (args->ar_data != GFS2_DATA_DEFAULT) {
		char *state;
		switch (args->ar_data) {
		case GFS2_DATA_WRITEBACK:
			state = "writeback";
			break;
		case GFS2_DATA_ORDERED:
			state = "ordered";
			break;
		default:
			state = "unknown";
			break;
		}
		FUNC1(s, ",data=%s", state);
	}
	if (args->ar_discard)
		FUNC2(s, ",discard");
	val = sdp->sd_tune.gt_logd_secs;
	if (val != 30)
		FUNC1(s, ",commit=%d", val);
	val = sdp->sd_tune.gt_statfs_quantum;
	if (val != 30)
		FUNC1(s, ",statfs_quantum=%d", val);
	else if (sdp->sd_tune.gt_statfs_slow)
		FUNC2(s, ",statfs_quantum=0");
	val = sdp->sd_tune.gt_quota_quantum;
	if (val != 60)
		FUNC1(s, ",quota_quantum=%d", val);
	if (args->ar_statfs_percent)
		FUNC1(s, ",statfs_percent=%d", args->ar_statfs_percent);
	if (args->ar_errors != GFS2_ERRORS_DEFAULT) {
		const char *state;

		switch (args->ar_errors) {
		case GFS2_ERRORS_WITHDRAW:
			state = "withdraw";
			break;
		case GFS2_ERRORS_PANIC:
			state = "panic";
			break;
		default:
			state = "unknown";
			break;
		}
		FUNC1(s, ",errors=%s", state);
	}
	if (FUNC4(SDF_NOBARRIERS, &sdp->sd_flags))
		FUNC2(s, ",nobarrier");
	if (FUNC4(SDF_DEMOTE, &sdp->sd_flags))
		FUNC2(s, ",demote_interface_used");
	if (args->ar_rgrplvb)
		FUNC2(s, ",rgrplvb");
	if (args->ar_loccookie)
		FUNC2(s, ",loccookie");
	return 0;
}