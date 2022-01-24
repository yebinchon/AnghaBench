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
typedef  int /*<<< orphan*/  u64 ;
struct super_block {int dummy; } ;
struct TYPE_2__ {long long tv_sec; scalar_t__ tv_nsec; } ;
struct inode {int i_state; TYPE_1__ i_atime; int /*<<< orphan*/  i_mode; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_holder {struct gfs2_glock* gh_gl; int /*<<< orphan*/  gh_flags; } ;
struct gfs2_inode {struct gfs2_glock* i_gl; struct gfs2_holder i_iopen_gh; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_no_formal_ino; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 unsigned int DT_UNKNOWN ; 
 int ENOMEM ; 
 struct inode* FUNC1 (int) ; 
 unsigned int GFS2_BLKST_FREE ; 
 struct gfs2_inode* FUNC2 (struct inode*) ; 
 struct gfs2_sbd* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  GIF_INVALID ; 
 int /*<<< orphan*/  GL_EXACT ; 
 int /*<<< orphan*/  GL_NOCACHE ; 
 int /*<<< orphan*/  GL_SKIP ; 
 int I_NEW ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_holder*) ; 
 int FUNC7 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct gfs2_glock**) ; 
 int FUNC8 (struct gfs2_glock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_glock*) ; 
 scalar_t__ FUNC10 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC11 (struct gfs2_holder*) ; 
 struct inode* FUNC12 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_inode_glops ; 
 int FUNC13 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  gfs2_iopen_glops ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_glock*,struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_glock*,struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 

struct inode *FUNC21(struct super_block *sb, unsigned int type,
				u64 no_addr, u64 no_formal_ino,
				unsigned int blktype)
{
	struct inode *inode;
	struct gfs2_inode *ip;
	struct gfs2_glock *io_gl = NULL;
	struct gfs2_holder i_gh;
	int error;

	FUNC11(&i_gh);
	inode = FUNC12(sb, no_addr);
	if (!inode)
		return FUNC1(-ENOMEM);

	ip = FUNC2(inode);

	if (inode->i_state & I_NEW) {
		struct gfs2_sbd *sdp = FUNC3(inode);
		ip->i_no_formal_ino = no_formal_ino;

		error = FUNC7(sdp, no_addr, &gfs2_inode_glops, CREATE, &ip->i_gl);
		if (FUNC19(error))
			goto fail;
		FUNC4(&ip->i_gl->gl_work);

		error = FUNC7(sdp, no_addr, &gfs2_iopen_glops, CREATE, &io_gl);
		if (FUNC19(error))
			goto fail_put;

		if (type == DT_UNKNOWN || blktype != GFS2_BLKST_FREE) {
			/*
			 * The GL_SKIP flag indicates to skip reading the inode
			 * block.  We read the inode with gfs2_inode_refresh
			 * after possibly checking the block type.
			 */
			error = FUNC8(ip->i_gl, LM_ST_EXCLUSIVE,
						   GL_SKIP, &i_gh);
			if (error)
				goto fail_put;

			if (blktype != GFS2_BLKST_FREE) {
				error = FUNC5(sdp, no_addr,
							    blktype);
				if (error)
					goto fail_put;
			}
		}

		FUNC16(ip->i_gl, ip);
		FUNC18(GIF_INVALID, &ip->i_flags);
		error = FUNC8(io_gl, LM_ST_SHARED, GL_EXACT, &ip->i_iopen_gh);
		if (FUNC19(error))
			goto fail_put;
		FUNC16(ip->i_iopen_gh.gh_gl, ip);
		FUNC9(io_gl);
		io_gl = NULL;

		if (type == DT_UNKNOWN) {
			/* Inode glock must be locked already */
			error = FUNC13(FUNC2(inode));
			if (error)
				goto fail_refresh;
		} else {
			inode->i_mode = FUNC0(type);
		}

		FUNC14(inode);

		/* Lowest possible timestamp; will be overwritten in gfs2_dinode_in. */
		inode->i_atime.tv_sec = 1LL << (8 * sizeof(inode->i_atime.tv_sec) - 1);
		inode->i_atime.tv_nsec = 0;

		FUNC20(inode);
	}

	if (FUNC10(&i_gh))
		FUNC6(&i_gh);
	return inode;

fail_refresh:
	ip->i_iopen_gh.gh_flags |= GL_NOCACHE;
	FUNC15(ip->i_iopen_gh.gh_gl, ip);
	FUNC6(&ip->i_iopen_gh);
fail_put:
	if (io_gl)
		FUNC9(io_gl);
	FUNC15(ip->i_gl, ip);
	if (FUNC10(&i_gh))
		FUNC6(&i_gh);
fail:
	FUNC17(inode);
	return FUNC1(error);
}