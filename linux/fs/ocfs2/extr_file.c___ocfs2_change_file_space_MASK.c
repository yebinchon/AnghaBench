#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int dummy; } ;
struct ocfs2_space_resv {int l_whence; scalar_t__ l_start; scalar_t__ l_len; } ;
struct inode {int i_flags; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_7__* i_sb; } ;
struct TYPE_10__ {int /*<<< orphan*/  dentry; } ;
struct file {int f_flags; TYPE_1__ f_path; } ;
struct buffer_head {int dummy; } ;
typedef  unsigned long long s64 ;
typedef  scalar_t__ loff_t ;
struct TYPE_11__ {int h_sync; } ;
typedef  TYPE_2__ handle_t ;
struct TYPE_13__ {int /*<<< orphan*/  ip_alloc_sem; } ;
struct TYPE_12__ {unsigned long long s_maxbytes; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int EROFS ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_8__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
#define  OCFS2_IOC_RESVSP 131 
#define  OCFS2_IOC_RESVSP64 130 
#define  OCFS2_IOC_UNRESVSP 129 
#define  OCFS2_IOC_UNRESVSP64 128 
 struct ocfs2_super* FUNC2 (TYPE_7__*) ; 
 int O_SYNC ; 
 int FUNC3 (TYPE_2__*) ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 int FUNC4 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int FUNC13 (struct inode*,unsigned long long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,TYPE_2__*) ; 
 int FUNC15 (struct inode*,struct buffer_head**,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int) ; 
 scalar_t__ FUNC17 (struct ocfs2_super*) ; 
 scalar_t__ FUNC18 (struct ocfs2_super*) ; 
 int FUNC19 (TYPE_2__*,struct inode*,struct buffer_head*) ; 
 int FUNC20 (struct inode*,struct buffer_head*,unsigned long long,scalar_t__) ; 
 int FUNC21 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int) ; 
 TYPE_2__* FUNC23 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct file *file, struct inode *inode,
				     loff_t f_pos, unsigned int cmd,
				     struct ocfs2_space_resv *sr,
				     int change_size)
{
	int ret;
	s64 llen;
	loff_t size;
	struct ocfs2_super *osb = FUNC2(inode->i_sb);
	struct buffer_head *di_bh = NULL;
	handle_t *handle;
	unsigned long long max_off = inode->i_sb->s_maxbytes;

	if (FUNC17(osb) || FUNC18(osb))
		return -EROFS;

	FUNC10(inode);

	/*
	 * This prevents concurrent writes on other nodes
	 */
	ret = FUNC21(inode, 1);
	if (ret) {
		FUNC12(ret);
		goto out;
	}

	ret = FUNC15(inode, &di_bh, 1);
	if (ret) {
		FUNC12(ret);
		goto out_rw_unlock;
	}

	if (inode->i_flags & (S_IMMUTABLE|S_APPEND)) {
		ret = -EPERM;
		goto out_inode_unlock;
	}

	switch (sr->l_whence) {
	case 0: /*SEEK_SET*/
		break;
	case 1: /*SEEK_CUR*/
		sr->l_start += f_pos;
		break;
	case 2: /*SEEK_END*/
		sr->l_start += FUNC8(inode);
		break;
	default:
		ret = -EINVAL;
		goto out_inode_unlock;
	}
	sr->l_whence = 0;

	llen = sr->l_len > 0 ? sr->l_len - 1 : sr->l_len;

	if (sr->l_start < 0
	    || sr->l_start > max_off
	    || (sr->l_start + llen) < 0
	    || (sr->l_start + llen) > max_off) {
		ret = -EINVAL;
		goto out_inode_unlock;
	}
	size = sr->l_start + sr->l_len;

	if (cmd == OCFS2_IOC_RESVSP || cmd == OCFS2_IOC_RESVSP64 ||
	    cmd == OCFS2_IOC_UNRESVSP || cmd == OCFS2_IOC_UNRESVSP64) {
		if (sr->l_len <= 0) {
			ret = -EINVAL;
			goto out_inode_unlock;
		}
	}

	if (file && FUNC24(file->f_path.dentry)) {
		ret = FUNC4(inode, di_bh);
		if (ret) {
			FUNC12(ret);
			goto out_inode_unlock;
		}
	}

	FUNC7(&FUNC1(inode)->ip_alloc_sem);
	switch (cmd) {
	case OCFS2_IOC_RESVSP:
	case OCFS2_IOC_RESVSP64:
		/*
		 * This takes unsigned offsets, but the signed ones we
		 * pass have been checked against overflow above.
		 */
		ret = FUNC13(inode, sr->l_start,
						       sr->l_len);
		break;
	case OCFS2_IOC_UNRESVSP:
	case OCFS2_IOC_UNRESVSP64:
		ret = FUNC20(inode, di_bh, sr->l_start,
					       sr->l_len);
		break;
	default:
		ret = -EINVAL;
	}
	FUNC25(&FUNC1(inode)->ip_alloc_sem);
	if (ret) {
		FUNC12(ret);
		goto out_inode_unlock;
	}

	/*
	 * We update c/mtime for these changes
	 */
	handle = FUNC23(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC0(handle)) {
		ret = FUNC3(handle);
		FUNC12(ret);
		goto out_inode_unlock;
	}

	if (change_size && FUNC8(inode) < size)
		FUNC9(inode, size);

	inode->i_ctime = inode->i_mtime = FUNC6(inode);
	ret = FUNC19(handle, inode, di_bh);
	if (ret < 0)
		FUNC12(ret);

	if (file && (file->f_flags & O_SYNC))
		handle->h_sync = 1;

	FUNC14(osb, handle);

out_inode_unlock:
	FUNC5(di_bh);
	FUNC16(inode, 1);
out_rw_unlock:
	FUNC22(inode, 1);

out:
	FUNC11(inode);
	return ret;
}