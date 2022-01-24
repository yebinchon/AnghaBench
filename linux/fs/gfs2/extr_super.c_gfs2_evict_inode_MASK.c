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
struct super_block {struct gfs2_sbd* s_fs_info; } ;
struct address_space {int dummy; } ;
struct inode {struct address_space i_data; int /*<<< orphan*/  i_mode; scalar_t__ i_nlink; struct super_block* i_sb; } ;
struct gfs2_sbd {TYPE_1__* sd_jdesc; } ;
struct gfs2_holder {int gh_flags; struct gfs2_glock* gh_gl; int /*<<< orphan*/  gh_iflags; } ;
struct gfs2_inode {int i_diskflags; struct gfs2_holder i_iopen_gh; struct gfs2_glock* i_gl; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_res; scalar_t__ i_eattr; int /*<<< orphan*/  i_no_addr; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  jd_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int /*<<< orphan*/  GFS2_BLKST_UNLINKED ; 
 int GFS2_DIF_EXHASH ; 
 struct gfs2_inode* FUNC1 (struct inode*) ; 
 int GFS2_LFC_EVICT_INODE ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 int /*<<< orphan*/  GIF_ALLOC_FAILED ; 
 int /*<<< orphan*/  GIF_FREE_VFS_INODE ; 
 int /*<<< orphan*/  GIF_GLOP_PENDING ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 int /*<<< orphan*/  GLF_DIRTY ; 
 int GLR_TRYFAILED ; 
 int GL_NOCACHE ; 
 int /*<<< orphan*/  GL_SKIP ; 
 int /*<<< orphan*/  HIF_HOLDER ; 
 int LM_FLAG_TRY_1CB ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int PF_MEMALLOC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC5 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC6 (struct address_space*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_sbd*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_glock*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct gfs2_inode*) ; 
 int FUNC11 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_inode*) ; 
 int FUNC13 (struct gfs2_inode*) ; 
 int FUNC14 (struct gfs2_inode*) ; 
 struct address_space* FUNC15 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC17 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC18 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC19 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_glock*) ; 
 int /*<<< orphan*/  FUNC21 (struct gfs2_glock*) ; 
 int FUNC22 (struct gfs2_holder*) ; 
 int FUNC23 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC24 (struct gfs2_glock*) ; 
 scalar_t__ FUNC25 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC26 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC28 (struct gfs2_holder*) ; 
 int FUNC29 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC30 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC31 (struct gfs2_sbd*,struct gfs2_glock*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct gfs2_inode*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (struct gfs2_inode*,int /*<<< orphan*/ *) ; 
 int FUNC36 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC38 (struct gfs2_glock*,struct gfs2_inode*) ; 
 scalar_t__ FUNC39 (struct super_block*) ; 
 scalar_t__ FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (struct address_space*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (struct address_space*) ; 
 scalar_t__ FUNC43 (int) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC45 (struct inode*,int) ; 

__attribute__((used)) static void FUNC46(struct inode *inode)
{
	struct super_block *sb = inode->i_sb;
	struct gfs2_sbd *sdp = sb->s_fs_info;
	struct gfs2_inode *ip = FUNC1(inode);
	struct gfs2_holder gh;
	struct address_space *metamapping;
	int error;

	if (FUNC40(GIF_FREE_VFS_INODE, &ip->i_flags)) {
		FUNC4(inode);
		return;
	}

	if (inode->i_nlink || FUNC39(sb))
		goto out;

	if (FUNC40(GIF_ALLOC_FAILED, &ip->i_flags)) {
		FUNC0(!FUNC21(ip->i_gl));
		FUNC26(&gh);
		goto alloc_failed;
	}

	/* Deletes should never happen under memory pressure anymore.  */
	if (FUNC3(current->flags & PF_MEMALLOC))
		goto out;

	/* Must not read inode block until block type has been verified */
	error = FUNC23(ip->i_gl, LM_ST_EXCLUSIVE, GL_SKIP, &gh);
	if (FUNC43(error)) {
		FUNC38(ip->i_iopen_gh.gh_gl, ip);
		ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
		FUNC18(&ip->i_iopen_gh);
		goto out;
	}

	error = FUNC9(sdp, ip->i_no_addr, GFS2_BLKST_UNLINKED);
	if (error)
		goto out_truncate;

	if (FUNC40(GIF_INVALID, &ip->i_flags)) {
		error = FUNC29(ip);
		if (error)
			goto out_truncate;
	}

	/*
	 * The inode may have been recreated in the meantime.
	 */
	if (inode->i_nlink)
		goto out_truncate;

alloc_failed:
	if (FUNC25(&ip->i_iopen_gh) &&
	    FUNC40(HIF_HOLDER, &ip->i_iopen_gh.gh_iflags)) {
		ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
		FUNC19(&ip->i_iopen_gh);
		FUNC27(LM_ST_EXCLUSIVE, LM_FLAG_TRY_1CB | GL_NOCACHE,
				   &ip->i_iopen_gh);
		error = FUNC22(&ip->i_iopen_gh);
		if (error)
			goto out_truncate;
	}

	if (FUNC2(inode->i_mode) &&
	    (ip->i_diskflags & GFS2_DIF_EXHASH)) {
		error = FUNC11(ip);
		if (error)
			goto out_unlock;
	}

	if (ip->i_eattr) {
		error = FUNC13(ip);
		if (error)
			goto out_unlock;
	}

	if (!FUNC30(ip)) {
		error = FUNC14(ip);
		if (error)
			goto out_unlock;
	}

	/* We're about to clear the bitmap for the dinode, but as soon as we
	   do, gfs2_create_inode can create another inode at the same block
	   location and try to set gl_object again. We clear gl_object here so
	   that subsequent inode creates don't see an old gl_object. */
	FUNC38(ip->i_gl, ip);
	error = FUNC10(ip);
	goto out_unlock;

out_truncate:
	FUNC31(sdp, ip->i_gl, GFS2_LOG_HEAD_FLUSH_NORMAL |
		       GFS2_LFC_EVICT_INODE);
	metamapping = FUNC15(ip->i_gl);
	if (FUNC40(GLF_DIRTY, &ip->i_gl->gl_flags)) {
		FUNC6(metamapping);
		FUNC5(metamapping);
	}
	FUNC45(inode, 1);
	FUNC8(ip->i_gl, 0);

	error = FUNC36(sdp, 0, sdp->sd_jdesc->jd_blocks);
	if (error)
		goto out_unlock;
	/* Needs to be done before glock release & also in a transaction */
	FUNC41(&inode->i_data, 0);
	FUNC41(metamapping, 0);
	FUNC37(sdp);

out_unlock:
	if (FUNC33(&ip->i_res))
		FUNC34(&ip->i_res);

	if (FUNC25(&ip->i_iopen_gh)) {
		FUNC38(ip->i_iopen_gh.gh_gl, ip);
		if (FUNC40(HIF_HOLDER, &ip->i_iopen_gh.gh_iflags)) {
			ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
			FUNC17(&ip->i_iopen_gh);
		}
		FUNC28(&ip->i_iopen_gh);
	}
	if (FUNC25(&gh)) {
		FUNC38(ip->i_gl, ip);
		FUNC18(&gh);
	}
	if (error && error != GLR_TRYFAILED && error != -EROFS)
		FUNC7(sdp, "gfs2_evict_inode: %d\n", error);
out:
	FUNC42(&inode->i_data);
	FUNC35(ip, NULL);
	FUNC32(ip);
	FUNC4(inode);
	FUNC12(ip);
	FUNC38(ip->i_gl, ip);
	FUNC44(&ip->i_flags, GIF_GLOP_PENDING, TASK_UNINTERRUPTIBLE);
	FUNC16(ip->i_gl);
	FUNC24(ip->i_gl);
	ip->i_gl = NULL;
	if (FUNC25(&ip->i_iopen_gh)) {
		struct gfs2_glock *gl = ip->i_iopen_gh.gh_gl;

		FUNC38(gl, ip);
		ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
		FUNC20(gl);
		FUNC18(&ip->i_iopen_gh);
		FUNC24(gl);
	}
}