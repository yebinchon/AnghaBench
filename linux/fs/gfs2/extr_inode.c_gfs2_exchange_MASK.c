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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int dummy; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_rename_gl; } ;
struct TYPE_4__ {scalar_t__ i_nlink; int /*<<< orphan*/  i_mode; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; struct inode* d_inode; } ;

/* Variables and functions */
 int ENOENT ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  GL_ASYNC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int RES_DINODE ; 
 int RES_LEAF ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ *,struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (unsigned int,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_holder*) ; 
 int FUNC9 (struct gfs2_holder*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 scalar_t__ FUNC12 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC13 (struct gfs2_holder*) ; 
 scalar_t__ FUNC14 (struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC15 (struct gfs2_holder*) ; 
 int FUNC16 (struct gfs2_inode*,struct gfs2_inode*) ; 
 int FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct gfs2_sbd*) ; 
 int FUNC19 (struct gfs2_sbd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct gfs2_sbd*) ; 
 int FUNC21 (struct gfs2_inode*,int /*<<< orphan*/ *,struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*) ; 
 int FUNC24 (struct gfs2_inode*,struct gfs2_inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC25(struct inode *odir, struct dentry *odentry,
			 struct inode *ndir, struct dentry *ndentry,
			 unsigned int flags)
{
	struct gfs2_inode *odip = FUNC0(odir);
	struct gfs2_inode *ndip = FUNC0(ndir);
	struct gfs2_inode *oip = FUNC0(odentry->d_inode);
	struct gfs2_inode *nip = FUNC0(ndentry->d_inode);
	struct gfs2_sbd *sdp = FUNC1(odir);
	struct gfs2_holder ghs[4], r_gh;
	unsigned int num_gh;
	unsigned int x;
	umode_t old_mode = oip->i_inode.i_mode;
	umode_t new_mode = nip->i_inode.i_mode;
	int error;

	FUNC13(&r_gh);
	error = FUNC18(sdp);
	if (error)
		return error;

	if (odip != ndip) {
		error = FUNC10(sdp->sd_rename_gl, LM_ST_EXCLUSIVE,
					   0, &r_gh);
		if (error)
			goto out;

		if (FUNC3(old_mode)) {
			/* don't move a directory into its subdir */
			error = FUNC16(oip, ndip);
			if (error)
				goto out_gunlock_r;
		}

		if (FUNC3(new_mode)) {
			/* don't move a directory into its subdir */
			error = FUNC16(nip, odip);
			if (error)
				goto out_gunlock_r;
		}
	}

	num_gh = 1;
	FUNC11(odip->i_gl, LM_ST_EXCLUSIVE, GL_ASYNC, ghs);
	if (odip != ndip) {
		FUNC11(ndip->i_gl, LM_ST_EXCLUSIVE, GL_ASYNC,
				 ghs + num_gh);
		num_gh++;
	}
	FUNC11(oip->i_gl, LM_ST_EXCLUSIVE, GL_ASYNC, ghs + num_gh);
	num_gh++;

	FUNC11(nip->i_gl, LM_ST_EXCLUSIVE, GL_ASYNC, ghs + num_gh);
	num_gh++;

	for (x = 0; x < num_gh; x++) {
		error = FUNC9(ghs + x);
		if (error)
			goto out_gunlock;
	}

	error = FUNC6(num_gh, ghs);
	if (error)
		goto out_gunlock;

	error = -ENOENT;
	if (oip->i_inode.i_nlink == 0 || nip->i_inode.i_nlink == 0)
		goto out_gunlock;

	error = FUNC21(odip, &odentry->d_name, oip);
	if (error)
		goto out_gunlock;
	error = FUNC21(ndip, &ndentry->d_name, nip);
	if (error)
		goto out_gunlock;

	if (FUNC3(old_mode)) {
		error = FUNC17(odentry->d_inode, MAY_WRITE);
		if (error)
			goto out_gunlock;
	}
	if (FUNC3(new_mode)) {
		error = FUNC17(ndentry->d_inode, MAY_WRITE);
		if (error)
			goto out_gunlock;
	}
	error = FUNC19(sdp, 4 * RES_DINODE + 4 * RES_LEAF, 0);
	if (error)
		goto out_gunlock;

	error = FUNC24(oip, ndip, FUNC3(old_mode));
	if (error)
		goto out_end_trans;

	error = FUNC24(nip, odip, FUNC3(new_mode));
	if (error)
		goto out_end_trans;

	error = FUNC5(ndip, &ndentry->d_name, oip,
			       FUNC2(old_mode));
	if (error)
		goto out_end_trans;

	error = FUNC5(odip, &odentry->d_name, nip,
			       FUNC2(new_mode));
	if (error)
		goto out_end_trans;

	if (odip != ndip) {
		if (FUNC3(new_mode) && !FUNC3(old_mode)) {
			FUNC22(&odip->i_inode);
			FUNC4(&ndip->i_inode);
		} else if (FUNC3(old_mode) && !FUNC3(new_mode)) {
			FUNC22(&ndip->i_inode);
			FUNC4(&odip->i_inode);
		}
	}
	FUNC23(&ndip->i_inode);
	if (odip != ndip)
		FUNC23(&odip->i_inode);

out_end_trans:
	FUNC20(sdp);
out_gunlock:
	while (x--) {
		if (FUNC14(ghs + x))
			FUNC7(ghs + x);
		FUNC15(ghs + x);
	}
out_gunlock_r:
	if (FUNC12(&r_gh))
		FUNC8(&r_gh);
out:
	return error;
}