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
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int dummy; } ;
struct inode {int i_state; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {struct ocfs2_lock_res ip_inode_lockres; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LKF_NOQUEUE ; 
 int DLM_LOCK_EX ; 
 int DLM_LOCK_PR ; 
 int EAGAIN ; 
 int ENOENT ; 
 int EROFS ; 
 int I_NEW ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_META_LOCK_GETBH ; 
 int OCFS2_META_LOCK_NOQUEUE ; 
 int OCFS2_META_LOCK_RECOVERY ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int FUNC2 (struct ocfs2_super*,struct ocfs2_lock_res*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (struct inode*,struct buffer_head**,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct ocfs2_lock_res*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 scalar_t__ FUNC10 (struct ocfs2_super*) ; 
 scalar_t__ FUNC11 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC12 (struct ocfs2_super*) ; 

int FUNC13(struct inode *inode,
				 struct buffer_head **ret_bh,
				 int ex,
				 int arg_flags,
				 int subclass)
{
	int status, level, acquired;
	u32 dlm_flags;
	struct ocfs2_lock_res *lockres = NULL;
	struct ocfs2_super *osb = FUNC1(inode->i_sb);
	struct buffer_head *local_bh = NULL;

	FUNC4(0, "inode %llu, take %s META lock\n",
	     (unsigned long long)FUNC0(inode)->ip_blkno,
	     ex ? "EXMODE" : "PRMODE");

	status = 0;
	acquired = 0;
	/* We'll allow faking a readonly metadata lock for
	 * rodevices. */
	if (FUNC10(osb)) {
		if (ex)
			status = -EROFS;
		goto getbh;
	}

	if ((arg_flags & OCFS2_META_LOCK_GETBH) ||
	    FUNC11(osb))
		goto update;

	if (!(arg_flags & OCFS2_META_LOCK_RECOVERY))
		FUNC12(osb);

	lockres = &FUNC0(inode)->ip_inode_lockres;
	level = ex ? DLM_LOCK_EX : DLM_LOCK_PR;
	dlm_flags = 0;
	if (arg_flags & OCFS2_META_LOCK_NOQUEUE)
		dlm_flags |= DLM_LKF_NOQUEUE;

	status = FUNC2(osb, lockres, level, dlm_flags,
				      arg_flags, subclass, _RET_IP_);
	if (status < 0) {
		if (status != -EAGAIN)
			FUNC5(status);
		goto bail;
	}

	/* Notify the error cleanup path to drop the cluster lock. */
	acquired = 1;

	/* We wait twice because a node may have died while we were in
	 * the lower dlm layers. The second time though, we've
	 * committed to owning this lock so we don't allow signals to
	 * abort the operation. */
	if (!(arg_flags & OCFS2_META_LOCK_RECOVERY))
		FUNC12(osb);

update:
	/*
	 * We only see this flag if we're being called from
	 * ocfs2_read_locked_inode(). It means we're locking an inode
	 * which hasn't been populated yet, so clear the refresh flag
	 * and let the caller handle it.
	 */
	if (inode->i_state & I_NEW) {
		status = 0;
		if (lockres)
			FUNC7(lockres, 0);
		goto bail;
	}

	/* This is fun. The caller may want a bh back, or it may
	 * not. ocfs2_inode_lock_update definitely wants one in, but
	 * may or may not read one, depending on what's in the
	 * LVB. The result of all of this is that we've *only* gone to
	 * disk if we have to, so the complexity is worthwhile. */
	status = FUNC8(inode, &local_bh);
	if (status < 0) {
		if (status != -ENOENT)
			FUNC5(status);
		goto bail;
	}
getbh:
	if (ret_bh) {
		status = FUNC6(inode, ret_bh, local_bh);
		if (status < 0) {
			FUNC5(status);
			goto bail;
		}
	}

bail:
	if (status < 0) {
		if (ret_bh && (*ret_bh)) {
			FUNC3(*ret_bh);
			*ret_bh = NULL;
		}
		if (acquired)
			FUNC9(inode, ex);
	}

	FUNC3(local_bh);
	return status;
}