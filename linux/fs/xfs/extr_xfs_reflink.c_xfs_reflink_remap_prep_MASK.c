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
struct xfs_inode {int dummy; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 struct xfs_inode* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct xfs_inode*) ; 
 scalar_t__ FUNC3 (struct xfs_inode*) ; 
 int /*<<< orphan*/  XFS_MMAPLOCK_EXCL ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*,scalar_t__,struct file*,scalar_t__,scalar_t__*,unsigned int) ; 
 int FUNC6 (struct xfs_inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct xfs_inode*,int /*<<< orphan*/ ,struct xfs_inode*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct xfs_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct file*,struct file*) ; 
 int FUNC12 (struct xfs_inode*,struct xfs_inode*) ; 
 int FUNC13 (struct xfs_inode*,scalar_t__) ; 

int
FUNC14(
	struct file		*file_in,
	loff_t			pos_in,
	struct file		*file_out,
	loff_t			pos_out,
	loff_t			*len,
	unsigned int		remap_flags)
{
	struct inode		*inode_in = FUNC4(file_in);
	struct xfs_inode	*src = FUNC1(inode_in);
	struct inode		*inode_out = FUNC4(file_out);
	struct xfs_inode	*dest = FUNC1(inode_out);
	bool			same_inode = (inode_in == inode_out);
	ssize_t			ret;

	/* Lock both files against IO */
	ret = FUNC8(inode_in, inode_out);
	if (ret)
		return ret;
	if (same_inode)
		FUNC7(src, XFS_MMAPLOCK_EXCL);
	else
		FUNC9(src, XFS_MMAPLOCK_EXCL, dest,
				XFS_MMAPLOCK_EXCL);

	/* Check file eligibility and prepare for block sharing. */
	ret = -EINVAL;
	/* Don't reflink realtime inodes */
	if (FUNC3(src) || FUNC3(dest))
		goto out_unlock;

	/* Don't share DAX file data for now. */
	if (FUNC0(inode_in) || FUNC0(inode_out))
		goto out_unlock;

	ret = FUNC5(file_in, pos_in, file_out, pos_out,
			len, remap_flags);
	if (ret < 0 || *len == 0)
		goto out_unlock;

	/* Attach dquots to dest inode before changing block map */
	ret = FUNC10(dest);
	if (ret)
		goto out_unlock;

	/*
	 * Zero existing post-eof speculative preallocations in the destination
	 * file.
	 */
	ret = FUNC13(dest, pos_out);
	if (ret)
		goto out_unlock;

	/* Set flags and remap blocks. */
	ret = FUNC12(src, dest);
	if (ret)
		goto out_unlock;

	/*
	 * If pos_out > EOF, we may have dirtied blocks between EOF and
	 * pos_out. In that case, we need to extend the flush and unmap to cover
	 * from EOF to the end of the copy length.
	 */
	if (pos_out > FUNC2(dest)) {
		loff_t	flen = *len + (pos_out - FUNC2(dest));
		ret = FUNC6(dest, FUNC2(dest), flen);
	} else {
		ret = FUNC6(dest, pos_out, *len);
	}
	if (ret)
		goto out_unlock;

	return 1;
out_unlock:
	FUNC11(file_in, file_out);
	return ret;
}