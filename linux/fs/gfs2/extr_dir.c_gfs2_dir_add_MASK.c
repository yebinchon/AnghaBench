#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_leaf {int /*<<< orphan*/  lf_sec; int /*<<< orphan*/  lf_nsec; int /*<<< orphan*/  lf_entries; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_mode; struct timespec64 i_ctime; struct timespec64 i_mtime; } ;
struct gfs2_inode {int i_diskflags; scalar_t__ i_depth; TYPE_1__ i_inode; int /*<<< orphan*/  i_entries; } ;
struct gfs2_dirent {void* de_rahead; void* de_type; } ;
struct gfs2_diradd {struct buffer_head* bh; struct gfs2_dirent* dent; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int ENOSPC ; 
 int GFS2_DIF_EXHASH ; 
 scalar_t__ GFS2_DIR_MAX_DEPTH ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct gfs2_dirent*) ; 
 int FUNC3 (struct gfs2_dirent*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC10 (TYPE_1__*) ; 
 int FUNC11 (struct gfs2_inode*) ; 
 int FUNC12 (struct inode*) ; 
 int FUNC13 (struct inode*,struct qstr const*) ; 
 int FUNC14 (struct inode*,struct qstr const*) ; 
 int /*<<< orphan*/  gfs2_dirent_find_space ; 
 struct gfs2_dirent* FUNC15 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 
 struct gfs2_dirent* FUNC16 (struct inode*,struct gfs2_dirent*,struct qstr const*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_inode const*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_inode const*,struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 

int FUNC21(struct inode *inode, const struct qstr *name,
		 const struct gfs2_inode *nip, struct gfs2_diradd *da)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct buffer_head *bh = da->bh;
	struct gfs2_dirent *dent = da->dent;
	struct timespec64 tv;
	struct gfs2_leaf *leaf;
	int error;

	while(1) {
		if (da->bh == NULL) {
			dent = FUNC15(inode, name,
						  gfs2_dirent_find_space, &bh);
		}
		if (dent) {
			if (FUNC2(dent))
				return FUNC3(dent);
			dent = FUNC16(inode, dent, name, bh);
			FUNC18(nip, dent);
			dent->de_type = FUNC7(FUNC1(nip->i_inode.i_mode));
			dent->de_rahead = FUNC7(FUNC17(nip));
			tv = FUNC10(&ip->i_inode);
			if (ip->i_diskflags & GFS2_DIF_EXHASH) {
				leaf = (struct gfs2_leaf *)bh->b_data;
				FUNC5(&leaf->lf_entries, 1);
				leaf->lf_nsec = FUNC8(tv.tv_nsec);
				leaf->lf_sec = FUNC9(tv.tv_sec);
			}
			da->dent = NULL;
			da->bh = NULL;
			FUNC6(bh);
			ip->i_entries++;
			ip->i_inode.i_mtime = ip->i_inode.i_ctime = tv;
			if (FUNC4(nip->i_inode.i_mode))
				FUNC19(&ip->i_inode);
			FUNC20(inode);
			error = 0;
			break;
		}
		if (!(ip->i_diskflags & GFS2_DIF_EXHASH)) {
			error = FUNC12(inode);
			if (error)
				break;
			continue;
		}
		error = FUNC14(inode, name);
		if (error == 0)
			continue;
		if (error < 0)
			break;
		if (ip->i_depth < GFS2_DIR_MAX_DEPTH) {
			error = FUNC11(ip);
			if (error)
				break;
			error = FUNC14(inode, name);
			if (error < 0)
				break;
			if (error == 0)
				continue;
		}
		error = FUNC13(inode, name);
		if (!error)
			continue;
		error = -ENOSPC;
		break;
	}
	return error;
}