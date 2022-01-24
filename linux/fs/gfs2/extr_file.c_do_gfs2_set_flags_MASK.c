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
typedef  int u32 ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mapping; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct file {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_LINUX_IMMUTABLE ; 
 int EACCES ; 
 int EPERM ; 
 int GFS2_DIF_APPENDONLY ; 
 int GFS2_DIF_IMMUTABLE ; 
 int GFS2_DIF_JDATA ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int GFS2_LFC_SET_FLAGS ; 
 int GFS2_LOG_HEAD_FLUSH_NORMAL ; 
 struct gfs2_sbd* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  LM_ST_EXCLUSIVE ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int /*<<< orphan*/  RES_DINODE ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 struct inode* FUNC7 (struct file*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gfs2_holder*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 
 int /*<<< orphan*/  FUNC14 (struct gfs2_sbd*,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC16 (struct gfs2_inode*) ; 
 int FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC21 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct file*) ; 
 int FUNC25 (struct file*) ; 
 int FUNC26 (struct inode*,int,int const) ; 

__attribute__((used)) static int FUNC27(struct file *filp, u32 reqflags, u32 mask,
			     const u32 fsflags)
{
	struct inode *inode = FUNC7(filp);
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_sbd *sdp = FUNC1(inode);
	struct buffer_head *bh;
	struct gfs2_holder gh;
	int error;
	u32 new_flags, flags, oldflags;

	error = FUNC25(filp);
	if (error)
		return error;

	error = FUNC13(ip->i_gl, LM_ST_EXCLUSIVE, 0, &gh);
	if (error)
		goto out_drop_write;

	oldflags = FUNC11(inode, ip->i_diskflags);
	error = FUNC26(inode, oldflags, fsflags);
	if (error)
		goto out;

	error = -EACCES;
	if (!FUNC23(inode))
		goto out;

	error = 0;
	flags = ip->i_diskflags;
	new_flags = (flags & ~mask) | (reqflags & mask);
	if ((new_flags ^ flags) == 0)
		goto out;

	error = -EPERM;
	if (FUNC3(inode) && (new_flags & GFS2_DIF_IMMUTABLE))
		goto out;
	if (FUNC2(inode) && (new_flags & GFS2_DIF_APPENDONLY))
		goto out;
	if (((new_flags ^ flags) & GFS2_DIF_IMMUTABLE) &&
	    !FUNC5(CAP_LINUX_IMMUTABLE))
		goto out;
	if (!FUNC3(inode)) {
		error = FUNC17(inode, MAY_WRITE);
		if (error)
			goto out;
	}
	if ((flags ^ new_flags) & GFS2_DIF_JDATA) {
		if (new_flags & GFS2_DIF_JDATA)
			FUNC14(sdp, ip->i_gl,
				       GFS2_LOG_HEAD_FLUSH_NORMAL |
				       GFS2_LFC_SET_FLAGS);
		error = FUNC9(inode->i_mapping);
		if (error)
			goto out;
		error = FUNC8(inode->i_mapping);
		if (error)
			goto out;
		if (new_flags & GFS2_DIF_JDATA)
			FUNC16(ip);
	}
	error = FUNC21(sdp, RES_DINODE, 0);
	if (error)
		goto out;
	error = FUNC15(ip, &bh);
	if (error)
		goto out_trans_end;
	inode->i_ctime = FUNC6(inode);
	FUNC20(ip->i_gl, bh);
	ip->i_diskflags = new_flags;
	FUNC10(ip, bh->b_data);
	FUNC4(bh);
	FUNC19(inode);
	FUNC18(inode);
out_trans_end:
	FUNC22(sdp);
out:
	FUNC12(&gh);
out_drop_write:
	FUNC24(filp);
	return error;
}