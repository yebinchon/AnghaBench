#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct timespec64 {int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct qstr {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_sec; int /*<<< orphan*/  lf_nsec; int /*<<< orphan*/  lf_entries; } ;
struct TYPE_5__ {struct timespec64 i_ctime; struct timespec64 i_mtime; } ;
struct gfs2_inode {int i_diskflags; TYPE_1__ i_inode; int /*<<< orphan*/  i_entries; } ;
struct gfs2_dirent {int /*<<< orphan*/  de_rec_len; } ;
struct dentry {struct qstr d_name; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int GFS2_DIF_EXHASH ; 
 scalar_t__ FUNC0 (struct gfs2_dirent*) ; 
 int FUNC1 (struct gfs2_dirent*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (struct dentry const*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_inode*,struct buffer_head*,struct gfs2_dirent*,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 scalar_t__ FUNC12 (struct gfs2_dirent*,struct qstr const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gfs2_dirent_prev ; 
 struct gfs2_dirent* FUNC13 (TYPE_1__*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 

int FUNC15(struct gfs2_inode *dip, const struct dentry *dentry)
{
	const struct qstr *name = &dentry->d_name;
	struct gfs2_dirent *dent, *prev = NULL;
	struct buffer_head *bh;
	struct timespec64 tv = FUNC7(&dip->i_inode);

	/* Returns _either_ the entry (if its first in block) or the
	   previous entry otherwise */
	dent = FUNC13(&dip->i_inode, name, gfs2_dirent_prev, &bh);
	if (!dent) {
		FUNC11(dip);
		return -EIO;
	}
	if (FUNC0(dent)) {
		FUNC11(dip);
		return FUNC1(dent);
	}
	/* If not first in block, adjust pointers accordingly */
	if (FUNC12(dent, name, NULL) == 0) {
		prev = dent;
		dent = (struct gfs2_dirent *)((char *)dent + FUNC2(prev->de_rec_len));
	}

	FUNC9(dip, bh, prev, dent);
	if (dip->i_diskflags & GFS2_DIF_EXHASH) {
		struct gfs2_leaf *leaf = (struct gfs2_leaf *)bh->b_data;
		u16 entries = FUNC2(leaf->lf_entries);
		if (!entries)
			FUNC11(dip);
		leaf->lf_entries = FUNC4(--entries);
		leaf->lf_nsec = FUNC5(tv.tv_nsec);
		leaf->lf_sec = FUNC6(tv.tv_sec);
	}
	FUNC3(bh);

	if (!dip->i_entries)
		FUNC11(dip);
	dip->i_entries--;
	dip->i_inode.i_mtime = dip->i_inode.i_ctime = tv;
	if (FUNC8(dentry))
		FUNC10(&dip->i_inode);
	FUNC14(&dip->i_inode);

	return 0;
}