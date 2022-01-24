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
struct inode {int i_nlink; int /*<<< orphan*/  i_mode; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_gl; } ;
struct gfs2_inode {int i_entries; int /*<<< orphan*/  i_no_addr; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTEMPTY ; 
 int EROFS ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int RES_DINODE ; 
 int RES_LEAF ; 
 scalar_t__ RES_RG_BIT ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 struct gfs2_rgrpd* FUNC4 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_holder*) ; 
 int FUNC6 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_sbd*) ; 
 int FUNC10 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_sbd*) ; 
 int FUNC12 (struct gfs2_inode*,struct dentry*) ; 
 int FUNC13 (struct gfs2_inode*,int /*<<< orphan*/ *,struct gfs2_inode*) ; 

__attribute__((used)) static int FUNC14(struct inode *dir, struct dentry *dentry)
{
	struct gfs2_inode *dip = FUNC0(dir);
	struct gfs2_sbd *sdp = FUNC1(dir);
	struct inode *inode = FUNC3(dentry);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder ghs[3];
	struct gfs2_rgrpd *rgd;
	int error;

	error = FUNC9(sdp);
	if (error)
		return error;

	error = -EROFS;

	FUNC7(dip->i_gl, LM_ST_EXCLUSIVE, 0, ghs);
	FUNC7(ip->i_gl,  LM_ST_EXCLUSIVE, 0, ghs + 1);

	rgd = FUNC4(sdp, ip->i_no_addr, 1);
	if (!rgd)
		goto out_inodes;

	FUNC7(rgd->rd_gl, LM_ST_EXCLUSIVE, 0, ghs + 2);


	error = FUNC6(ghs); /* parent */
	if (error)
		goto out_parent;

	error = FUNC6(ghs + 1); /* child */
	if (error)
		goto out_child;

	error = -ENOENT;
	if (inode->i_nlink == 0)
		goto out_rgrp;

	if (FUNC2(inode->i_mode)) {
		error = -ENOTEMPTY;
		if (ip->i_entries > 2 || inode->i_nlink > 2)
			goto out_rgrp;
	}

	error = FUNC6(ghs + 2); /* rgrp */
	if (error)
		goto out_rgrp;

	error = FUNC13(dip, &dentry->d_name, ip);
	if (error)
		goto out_gunlock;

	error = FUNC10(sdp, 2*RES_DINODE + 3*RES_LEAF + RES_RG_BIT, 0);
	if (error)
		goto out_gunlock;

	error = FUNC12(dip, dentry);
	FUNC11(sdp);

out_gunlock:
	FUNC5(ghs + 2);
out_rgrp:
	FUNC5(ghs + 1);
out_child:
	FUNC5(ghs);
out_parent:
	FUNC8(ghs + 2);
out_inodes:
	FUNC8(ghs + 1);
	FUNC8(ghs);
	return error;
}