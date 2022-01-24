#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct gfs2_sbd {TYPE_1__* sd_statfs_inode; TYPE_1__* sd_rindex; TYPE_1__* sd_quota_inode; scalar_t__ sd_rindex_uptodate; int /*<<< orphan*/  sd_journal_ready; int /*<<< orphan*/  sd_master_dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_rwsem; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int UNDO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*) ; 
 void* FUNC6 (struct inode*,char*) ; 
 int /*<<< orphan*/  gfs2_quota_imutex_key ; 
 int FUNC7 (struct gfs2_sbd*) ; 
 int FUNC8 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct gfs2_sbd *sdp, int undo)
{
	int error = 0;
	struct inode *master = FUNC3(sdp->sd_master_dir);

	if (undo)
		goto fail_qinode;

	error = FUNC8(sdp, undo);
	FUNC2(&sdp->sd_journal_ready);
	if (error)
		goto fail;

	/* Read in the master statfs inode */
	sdp->sd_statfs_inode = FUNC6(master, "statfs");
	if (FUNC0(sdp->sd_statfs_inode)) {
		error = FUNC1(sdp->sd_statfs_inode);
		FUNC4(sdp, "can't read in statfs inode: %d\n", error);
		goto fail_journal;
	}

	/* Read in the resource index inode */
	sdp->sd_rindex = FUNC6(master, "rindex");
	if (FUNC0(sdp->sd_rindex)) {
		error = FUNC1(sdp->sd_rindex);
		FUNC4(sdp, "can't get resource index inode: %d\n", error);
		goto fail_statfs;
	}
	sdp->sd_rindex_uptodate = 0;

	/* Read in the quota inode */
	sdp->sd_quota_inode = FUNC6(master, "quota");
	if (FUNC0(sdp->sd_quota_inode)) {
		error = FUNC1(sdp->sd_quota_inode);
		FUNC4(sdp, "can't get quota file inode: %d\n", error);
		goto fail_rindex;
	}
	/*
	 * i_rwsem on quota files is special. Since this inode is hidden system
	 * file, we are safe to define locking ourselves.
	 */
	FUNC10(&sdp->sd_quota_inode->i_rwsem,
			  &gfs2_quota_imutex_key);

	error = FUNC7(sdp);
	if (error)
		goto fail_qinode;

	return 0;

fail_qinode:
	FUNC9(sdp->sd_quota_inode);
fail_rindex:
	FUNC5(sdp);
	FUNC9(sdp->sd_rindex);
fail_statfs:
	FUNC9(sdp->sd_statfs_inode);
fail_journal:
	FUNC8(sdp, UNDO);
fail:
	return error;
}