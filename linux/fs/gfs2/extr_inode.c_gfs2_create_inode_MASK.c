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
typedef  int umode_t ;
typedef  int /*<<< orphan*/  u32 ;
struct qstr {scalar_t__ len; } ;
struct posix_acl {int dummy; } ;
struct inode {int i_mode; unsigned int i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_rdev; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_root_dir; int /*<<< orphan*/  sd_vfs; } ;
struct gfs2_holder {struct gfs2_glock* gh_gl; } ;
struct gfs2_inode {int i_diskflags; int i_entries; int /*<<< orphan*/  i_flags; struct gfs2_glock* i_gl; struct gfs2_holder i_iopen_gh; int /*<<< orphan*/  i_inode; scalar_t__ i_no_addr; scalar_t__ i_eattr; scalar_t__ i_depth; scalar_t__ i_height; int /*<<< orphan*/  i_goal; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_work; } ;
struct gfs2_diradd {int save_loc; int /*<<< orphan*/ * bh; } ;
struct file {int /*<<< orphan*/  f_mode; } ;
struct dentry {struct qstr d_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_TYPE_ACCESS ; 
 int /*<<< orphan*/  ACL_TYPE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CREATE ; 
 int /*<<< orphan*/  EISDIR ; 
 int ENAMETOOLONG ; 
 int ENOENT ; 
 int ENOMEM ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FMODE_CREATED ; 
 int /*<<< orphan*/  GFS2_AF_ORLOV ; 
 int GFS2_DIF_INHERIT_JDATA ; 
 int GFS2_DIF_JDATA ; 
 int GFS2_DIF_SYSTEM ; 
 int GFS2_DIF_TOPDIR ; 
 scalar_t__ GFS2_FNAMESIZE ; 
 struct gfs2_inode* FUNC2 (struct inode*) ; 
 struct gfs2_sbd* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIF_ALLOC_FAILED ; 
 int /*<<< orphan*/  GIF_FREE_VFS_INODE ; 
 int /*<<< orphan*/  GLF_INODE_CREATING ; 
 int /*<<< orphan*/  GL_EXACT ; 
 int /*<<< orphan*/  GL_SKIP ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int FUNC6 (struct inode*) ; 
#define  S_IFDIR 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (struct inode*,struct posix_acl*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct gfs2_inode*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct gfs2_inode*,struct qstr const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 struct inode* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct dentry*,struct inode*) ; 
 int FUNC18 (struct file*,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct file*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct gfs2_diradd*) ; 
 struct inode* FUNC22 (struct inode*,struct qstr*,int) ; 
 int FUNC23 (struct inode*,struct qstr const*,struct gfs2_diradd*) ; 
 int /*<<< orphan*/  FUNC24 (struct gfs2_holder*) ; 
 int FUNC25 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gfs2_glock**) ; 
 int FUNC26 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC27 (struct gfs2_glock*) ; 
 scalar_t__ FUNC28 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC29 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC30 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_initxattrs ; 
 int /*<<< orphan*/  gfs2_inode_glops ; 
 int /*<<< orphan*/  gfs2_iopen_glops ; 
 int /*<<< orphan*/  gfs2_open_common ; 
 int FUNC31 (struct gfs2_sbd*) ; 
 int FUNC32 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC33 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (struct inode*) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC36 (struct inode*) ; 
 int /*<<< orphan*/  FUNC37 (struct inode*) ; 
 int FUNC38 (struct gfs2_sbd*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC40 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct gfs2_glock*,struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC42 (struct gfs2_glock*,struct gfs2_inode*) ; 
 int /*<<< orphan*/  gt_new_files_jdata ; 
 int /*<<< orphan*/  FUNC43 (struct gfs2_inode*,struct gfs2_inode*,char const*) ; 
 int /*<<< orphan*/  FUNC44 (struct inode*) ; 
 int /*<<< orphan*/  FUNC45 (struct inode*) ; 
 int FUNC46 (struct gfs2_inode*,struct qstr const*,struct gfs2_inode*,struct gfs2_diradd*) ; 
 int /*<<< orphan*/  FUNC47 (struct inode*) ; 
 int /*<<< orphan*/  FUNC48 (struct gfs2_inode*,struct inode*) ; 
 struct inode* FUNC49 (int /*<<< orphan*/ ) ; 
 int FUNC50 (struct inode*,int*,struct posix_acl**,struct posix_acl**) ; 
 int /*<<< orphan*/  FUNC51 (struct posix_acl*) ; 
 int FUNC52 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct qstr const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC53 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC54 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC55 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC56(struct inode *dir, struct dentry *dentry,
			     struct file *file,
			     umode_t mode, dev_t dev, const char *symname,
			     unsigned int size, int excl)
{
	const struct qstr *name = &dentry->d_name;
	struct posix_acl *default_acl, *acl;
	struct gfs2_holder ghs[2];
	struct inode *inode = NULL;
	struct gfs2_inode *dip = FUNC2(dir), *ip;
	struct gfs2_sbd *sdp = FUNC3(&dip->i_inode);
	struct gfs2_glock *io_gl = NULL;
	int error, free_vfs_inode = 1;
	u32 aflags = 0;
	unsigned blocks = 1;
	struct gfs2_diradd da = { .bh = NULL, .save_loc = 1, };

	if (!name->len || name->len > GFS2_FNAMESIZE)
		return -ENAMETOOLONG;

	error = FUNC32(dip);
	if (error)
		return error;

	error = FUNC31(sdp);
	if (error)
		return error;

	error = FUNC26(dip->i_gl, LM_ST_EXCLUSIVE, 0, ghs);
	if (error)
		goto fail;
	FUNC29(ghs + 1);

	error = FUNC14(dip, name, mode);
	if (error)
		goto fail_gunlock;

	inode = FUNC22(dir, &dentry->d_name, !FUNC8(mode) || excl);
	error = FUNC6(inode);
	if (!FUNC4(inode)) {
		if (FUNC7(inode->i_mode)) {
			FUNC45(inode);
			inode = FUNC1(-EISDIR);
			goto fail_gunlock;
		}
		FUNC17(dentry, inode);
		error = 0;
		if (file) {
			if (FUNC8(inode->i_mode))
				error = FUNC19(file, dentry, gfs2_open_common);
			else
				error = FUNC18(file, NULL);
		}
		FUNC24(ghs);
		return error;
	} else if (error != -ENOENT) {
		goto fail_gunlock;
	}

	error = FUNC23(dir, name, &da);
	if (error < 0)
		goto fail_gunlock;

	inode = FUNC49(sdp->sd_vfs);
	error = -ENOMEM;
	if (!inode)
		goto fail_gunlock;

	error = FUNC50(dir, &mode, &default_acl, &acl);
	if (error)
		goto fail_gunlock;

	ip = FUNC2(inode);
	error = FUNC32(ip);
	if (error)
		goto fail_free_acls;

	inode->i_mode = mode;
	FUNC54(inode, FUNC7(mode) ? 2 : 1);
	inode->i_rdev = dev;
	inode->i_size = size;
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC15(inode);
	FUNC35(inode, 1);
	FUNC48(dip, inode);
	FUNC11(dip);
	ip->i_goal = dip->i_goal;
	ip->i_diskflags = 0;
	ip->i_eattr = 0;
	ip->i_height = 0;
	ip->i_depth = 0;
	ip->i_entries = 0;
	ip->i_no_addr = 0; /* Temporarily zero until real addr is assigned */

	switch(mode & S_IFMT) {
	case S_IFREG:
		if ((dip->i_diskflags & GFS2_DIF_INHERIT_JDATA) ||
		    FUNC40(sdp, gt_new_files_jdata))
			ip->i_diskflags |= GFS2_DIF_JDATA;
		FUNC34(inode);
		break;
	case S_IFDIR:
		ip->i_diskflags |= (dip->i_diskflags & GFS2_DIF_INHERIT_JDATA);
		ip->i_diskflags |= GFS2_DIF_JDATA;
		ip->i_entries = 2;
		break;
	}

	/* Force SYSTEM flag on all files and subdirs of a SYSTEM directory */
	if (dip->i_diskflags & GFS2_DIF_SYSTEM)
		ip->i_diskflags |= GFS2_DIF_SYSTEM;

	FUNC36(inode);

	if ((FUNC2(FUNC16(sdp->sd_root_dir)) == dip) ||
	    (dip->i_diskflags & GFS2_DIF_TOPDIR))
		aflags |= GFS2_AF_ORLOV;

	if (default_acl || acl)
		blocks++;

	error = FUNC10(ip, aflags, &blocks);
	if (error)
		goto fail_free_inode;

	FUNC35(inode, blocks);

	error = FUNC25(sdp, ip->i_no_addr, &gfs2_inode_glops, CREATE, &ip->i_gl);
	if (error)
		goto fail_free_inode;
	FUNC20(&ip->i_gl->gl_work);
	FUNC42(ip->i_gl, ip);

	error = FUNC26(ip->i_gl, LM_ST_EXCLUSIVE, GL_SKIP, ghs + 1);
	if (error)
		goto fail_free_inode;

	error = FUNC38(sdp, blocks, 0);
	if (error)
		goto fail_gunlock2;

	if (blocks > 1) {
		ip->i_eattr = ip->i_no_addr + 1;
		FUNC30(ip);
	}
	FUNC43(dip, ip, symname);
	FUNC39(sdp);

	error = FUNC25(sdp, ip->i_no_addr, &gfs2_iopen_glops, CREATE, &io_gl);
	if (error)
		goto fail_gunlock2;

	FUNC0(FUNC55(GLF_INODE_CREATING, &io_gl->gl_flags));

	error = FUNC26(io_gl, LM_ST_SHARED, GL_EXACT, &ip->i_iopen_gh);
	if (error)
		goto fail_gunlock2;

	FUNC42(ip->i_iopen_gh.gh_gl, ip);
	FUNC27(io_gl);
	FUNC37(inode);
	FUNC44(inode);

	free_vfs_inode = 0; /* After this point, the inode is no longer
			       considered free. Any failures need to undo
			       the gfs2 structures. */
	if (default_acl) {
		error = FUNC9(inode, default_acl, ACL_TYPE_DEFAULT);
		if (error)
			goto fail_gunlock3;
		FUNC51(default_acl);
		default_acl = NULL;
	}
	if (acl) {
		error = FUNC9(inode, acl, ACL_TYPE_ACCESS);
		if (error)
			goto fail_gunlock3;
		FUNC51(acl);
		acl = NULL;
	}

	error = FUNC52(&ip->i_inode, &dip->i_inode, name,
					     &gfs2_initxattrs, NULL);
	if (error)
		goto fail_gunlock3;

	error = FUNC46(dip, name, ip, &da);
	if (error)
		goto fail_gunlock3;

	FUNC47(inode);
	FUNC17(dentry, inode);
	if (file) {
		file->f_mode |= FMODE_CREATED;
		error = FUNC19(file, dentry, gfs2_open_common);
	}
	FUNC24(ghs);
	FUNC24(ghs + 1);
	FUNC12(GLF_INODE_CREATING, &io_gl->gl_flags);
	return error;

fail_gunlock3:
	FUNC41(io_gl, ip);
	FUNC24(&ip->i_iopen_gh);
	FUNC27(io_gl);
fail_gunlock2:
	if (io_gl)
		FUNC12(GLF_INODE_CREATING, &io_gl->gl_flags);
fail_free_inode:
	if (ip->i_gl) {
		FUNC41(ip->i_gl, ip);
		FUNC27(ip->i_gl);
	}
	FUNC33(ip, NULL);
fail_free_acls:
	FUNC51(default_acl);
	FUNC51(acl);
fail_gunlock:
	FUNC21(&da);
	FUNC24(ghs);
	if (!FUNC5(inode)) {
		FUNC13(inode);
		if (!free_vfs_inode)
			FUNC47(inode);
		FUNC53(free_vfs_inode ? GIF_FREE_VFS_INODE : GIF_ALLOC_FAILED,
			&FUNC2(inode)->i_flags);
		FUNC45(inode);
	}
	if (FUNC28(ghs + 1))
		FUNC24(ghs + 1);
fail:
	return error;
}