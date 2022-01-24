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
struct qstr {int /*<<< orphan*/  len; } ;
struct inode {int dummy; } ;
struct gfs2_sbd {int sd_max_dirres; } ;
struct gfs2_leaf {int dummy; } ;
struct gfs2_inode {int i_diskflags; } ;
struct gfs2_dirent {int dummy; } ;
struct gfs2_diradd {int nr_blocks; struct gfs2_dirent* dent; struct buffer_head* bh; scalar_t__ save_loc; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int GFS2_DIF_EXHASH ; 
 unsigned int const FUNC0 (int /*<<< orphan*/ ) ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 struct gfs2_sbd* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct gfs2_dirent*) ; 
 int FUNC4 (struct gfs2_dirent*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  gfs2_dirent_find_space ; 
 struct gfs2_dirent* FUNC6 (struct inode*,struct qstr const*,int /*<<< orphan*/ ,struct buffer_head**) ; 

int FUNC7(struct inode *inode, const struct qstr *name,
			       struct gfs2_diradd *da)
{
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_sbd *sdp = FUNC2(inode);
	const unsigned int extra = sizeof(struct gfs2_dinode) - sizeof(struct gfs2_leaf);
	struct gfs2_dirent *dent;
	struct buffer_head *bh;

	da->nr_blocks = 0;
	da->bh = NULL;
	da->dent = NULL;

	dent = FUNC6(inode, name, gfs2_dirent_find_space, &bh);
	if (!dent) {
		da->nr_blocks = sdp->sd_max_dirres;
		if (!(ip->i_diskflags & GFS2_DIF_EXHASH) &&
		    (FUNC0(name->len) < extra))
			da->nr_blocks = 1;
		return 0;
	}
	if (FUNC3(dent))
		return FUNC4(dent);

	if (da->save_loc) {
		da->bh = bh;
		da->dent = dent;
	} else {
		FUNC5(bh);
	}
	return 0;
}