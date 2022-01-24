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
struct writeback_control {scalar_t__ sync_mode; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_lock; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct TYPE_2__ {scalar_t__ dirty_exceeded; } ;
struct backing_dev_info {TYPE_1__ wb; } ;
struct address_space {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int GFS2_LFC_WRITE_INODE ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int I_DIRTY ; 
 scalar_t__ WB_SYNC_ALL ; 
 int FUNC2 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC3 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct writeback_control*) ; 
 struct address_space* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_inode*) ; 
 struct backing_dev_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct writeback_control *wbc)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct address_space *metamapping = FUNC5(ip->i_gl);
	struct backing_dev_info *bdi = FUNC9(metamapping->host);
	int ret = 0;
	bool flush_all = (wbc->sync_mode == WB_SYNC_ALL || FUNC6(ip));

	if (flush_all)
		FUNC7(FUNC1(inode), ip->i_gl,
			       GFS2_LOG_HEAD_FLUSH_NORMAL |
			       GFS2_LFC_WRITE_INODE);
	if (bdi->wb.dirty_exceeded)
		FUNC4(sdp, wbc);
	else
		FUNC3(metamapping);
	if (flush_all)
		ret = FUNC2(metamapping);
	if (ret)
		FUNC10(inode);
	else {
		FUNC11(&inode->i_lock);
		if (!(inode->i_flags & I_DIRTY))
			FUNC8(ip);
		FUNC12(&inode->i_lock);
	}
	return ret;
}