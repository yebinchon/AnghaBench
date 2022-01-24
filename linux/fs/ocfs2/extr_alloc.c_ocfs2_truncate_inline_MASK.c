#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ocfs2_super {int /*<<< orphan*/  s_feature_incompat; } ;
struct ocfs2_inline_data {scalar_t__ id_data; } ;
struct TYPE_4__ {struct ocfs2_inline_data i_data; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_mtime_nsec; int /*<<< orphan*/  i_ctime_nsec; void* i_mtime; void* i_ctime; void* i_size; int /*<<< orphan*/  i_dyn_features; TYPE_1__ id2; } ;
struct TYPE_5__ {unsigned int tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct inode {TYPE_2__ i_ctime; TYPE_2__ i_mtime; int /*<<< orphan*/  i_blocks; int /*<<< orphan*/  i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_6__ {int ip_dyn_features; scalar_t__ ip_blkno; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EROFS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int OCFS2_INLINE_DATA_FL ; 
 int /*<<< orphan*/  OCFS2_INODE_UPDATE_CREDITS ; 
 int /*<<< orphan*/  OCFS2_JOURNAL_ACCESS_WRITE ; 
 struct ocfs2_super* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (unsigned int) ; 
 TYPE_2__ FUNC8 (struct inode*) ; 
 unsigned int FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,unsigned long long,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/ * FUNC19 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,struct inode*,int) ; 

int FUNC22(struct inode *inode, struct buffer_head *di_bh,
			  unsigned int start, unsigned int end, int trunc)
{
	int ret;
	unsigned int numbytes;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC4(inode->i_sb);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;
	struct ocfs2_inline_data *idata = &di->id2.i_data;

	if (end > FUNC9(inode))
		end = FUNC9(inode);

	FUNC0(start > end);

	if (!(FUNC3(inode)->ip_dyn_features & OCFS2_INLINE_DATA_FL) ||
	    !(FUNC11(di->i_dyn_features) & OCFS2_INLINE_DATA_FL) ||
	    !FUNC20(osb)) {
		FUNC15(inode->i_sb,
			    "Inline data flags for inode %llu don't agree! Disk: 0x%x, Memory: 0x%x, Superblock: 0x%x\n",
			    (unsigned long long)FUNC3(inode)->ip_blkno,
			    FUNC11(di->i_dyn_features),
			    FUNC3(inode)->ip_dyn_features,
			    osb->s_feature_incompat);
		ret = -EROFS;
		goto out;
	}

	handle = FUNC19(osb, OCFS2_INODE_UPDATE_CREDITS);
	if (FUNC2(handle)) {
		ret = FUNC5(handle);
		FUNC13(ret);
		goto out;
	}

	ret = FUNC17(handle, FUNC1(inode), di_bh,
				      OCFS2_JOURNAL_ACCESS_WRITE);
	if (ret) {
		FUNC13(ret);
		goto out_commit;
	}

	numbytes = end - start;
	FUNC12(idata->id_data + start, 0, numbytes);

	/*
	 * No need to worry about the data page here - it's been
	 * truncated already and inline data doesn't need it for
	 * pushing zero's to disk, so we'll let readpage pick it up
	 * later.
	 */
	if (trunc) {
		FUNC10(inode, start);
		di->i_size = FUNC7(start);
	}

	inode->i_blocks = FUNC16(inode);
	inode->i_ctime = inode->i_mtime = FUNC8(inode);

	di->i_ctime = di->i_mtime = FUNC7(inode->i_ctime.tv_sec);
	di->i_ctime_nsec = di->i_mtime_nsec = FUNC6(inode->i_ctime.tv_nsec);

	FUNC21(handle, inode, 1);
	FUNC18(handle, di_bh);

out_commit:
	FUNC14(osb, handle);

out:
	return ret;
}