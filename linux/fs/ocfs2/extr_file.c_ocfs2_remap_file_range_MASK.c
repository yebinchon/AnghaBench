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
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {int ip_flags; int /*<<< orphan*/  ip_alloc_sem; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EROFS ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_SYSTEM_FILE ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int REMAP_FILE_ADVISORY ; 
 unsigned int REMAP_FILE_DEDUP ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*,int,struct file*,int,int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct ocfs2_super*) ; 
 scalar_t__ FUNC9 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC10 (struct ocfs2_super*) ; 
 int FUNC11 (struct inode*,struct buffer_head**,struct inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,struct buffer_head*,struct inode*,struct buffer_head*) ; 
 int FUNC13 (struct inode*,struct buffer_head*,int,struct inode*,struct buffer_head*,int,int) ; 
 int FUNC14 (struct inode*,struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static loff_t FUNC19(struct file *file_in, loff_t pos_in,
				     struct file *file_out, loff_t pos_out,
				     loff_t len, unsigned int remap_flags)
{
	struct inode *inode_in = FUNC4(file_in);
	struct inode *inode_out = FUNC4(file_out);
	struct ocfs2_super *osb = FUNC1(inode_in->i_sb);
	struct buffer_head *in_bh = NULL, *out_bh = NULL;
	bool same_inode = (inode_in == inode_out);
	loff_t remapped = 0;
	ssize_t ret;

	if (remap_flags & ~(REMAP_FILE_DEDUP | REMAP_FILE_ADVISORY))
		return -EINVAL;
	if (!FUNC10(osb))
		return -EOPNOTSUPP;
	if (FUNC8(osb) || FUNC9(osb))
		return -EROFS;

	/* Lock both files against IO */
	ret = FUNC11(inode_in, &in_bh, inode_out, &out_bh);
	if (ret)
		return ret;

	/* Check file eligibility and prepare for block sharing. */
	ret = -EINVAL;
	if ((FUNC0(inode_in)->ip_flags & OCFS2_INODE_SYSTEM_FILE) ||
	    (FUNC0(inode_out)->ip_flags & OCFS2_INODE_SYSTEM_FILE))
		goto out_unlock;

	ret = FUNC5(file_in, pos_in, file_out, pos_out,
			&len, remap_flags);
	if (ret < 0 || len == 0)
		goto out_unlock;

	/* Lock out changes to the allocation maps and remap. */
	FUNC2(&FUNC0(inode_in)->ip_alloc_sem);
	if (!same_inode)
		FUNC3(&FUNC0(inode_out)->ip_alloc_sem,
				  SINGLE_DEPTH_NESTING);

	/* Zap any page cache for the destination file's range. */
	FUNC17(&inode_out->i_data,
				   FUNC15(pos_out, PAGE_SIZE),
				   FUNC16(pos_out + len, PAGE_SIZE) - 1);

	remapped = FUNC13(inode_in, in_bh, pos_in,
			inode_out, out_bh, pos_out, len);
	FUNC18(&FUNC0(inode_in)->ip_alloc_sem);
	if (!same_inode)
		FUNC18(&FUNC0(inode_out)->ip_alloc_sem);
	if (remapped < 0) {
		ret = remapped;
		FUNC6(ret);
		goto out_unlock;
	}

	/*
	 * Empty the extent map so that we may get the right extent
	 * record from the disk.
	 */
	FUNC7(inode_in, 0);
	FUNC7(inode_out, 0);

	ret = FUNC14(inode_out, out_bh, pos_out + len);
	if (ret) {
		FUNC6(ret);
		goto out_unlock;
	}

out_unlock:
	FUNC12(inode_in, in_bh, inode_out, out_bh);
	return remapped > 0 ? remapped : ret;
}