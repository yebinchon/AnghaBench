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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EBADE ; 
 int EINVAL ; 
 int EISDIR ; 
 int EPERM ; 
 int ETXTBSY ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 unsigned int REMAP_FILE_DEDUP ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC4 (struct file*) ; 
 int FUNC5 (struct file*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct inode*,struct inode*,scalar_t__,scalar_t__*,unsigned int) ; 
 int FUNC8 (struct file*,scalar_t__,struct file*,scalar_t__,scalar_t__*,unsigned int) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,scalar_t__,struct inode*,scalar_t__,scalar_t__,int*) ; 

int FUNC12(struct file *file_in, loff_t pos_in,
				  struct file *file_out, loff_t pos_out,
				  loff_t *len, unsigned int remap_flags)
{
	struct inode *inode_in = FUNC4(file_in);
	struct inode *inode_out = FUNC4(file_out);
	bool same_inode = (inode_in == inode_out);
	int ret;

	/* Don't touch certain kinds of inodes */
	if (FUNC0(inode_out))
		return -EPERM;

	if (FUNC1(inode_in) || FUNC1(inode_out))
		return -ETXTBSY;

	/* Don't reflink dirs, pipes, sockets... */
	if (FUNC2(inode_in->i_mode) || FUNC2(inode_out->i_mode))
		return -EISDIR;
	if (!FUNC3(inode_in->i_mode) || !FUNC3(inode_out->i_mode))
		return -EINVAL;

	/* Zero length dedupe exits immediately; reflink goes to EOF. */
	if (*len == 0) {
		loff_t isize = FUNC9(inode_in);

		if ((remap_flags & REMAP_FILE_DEDUP) || pos_in == isize)
			return 0;
		if (pos_in > isize)
			return -EINVAL;
		*len = isize - pos_in;
		if (*len == 0)
			return 0;
	}

	/* Check that we don't violate system file offset limits. */
	ret = FUNC8(file_in, pos_in, file_out, pos_out, len,
			remap_flags);
	if (ret)
		return ret;

	/* Wait for the completion of any pending IOs on both files */
	FUNC10(inode_in);
	if (!same_inode)
		FUNC10(inode_out);

	ret = FUNC6(inode_in->i_mapping,
			pos_in, pos_in + *len - 1);
	if (ret)
		return ret;

	ret = FUNC6(inode_out->i_mapping,
			pos_out, pos_out + *len - 1);
	if (ret)
		return ret;

	/*
	 * Check that the extents are the same.
	 */
	if (remap_flags & REMAP_FILE_DEDUP) {
		bool		is_same = false;

		ret = FUNC11(inode_in, pos_in,
				inode_out, pos_out, *len, &is_same);
		if (ret)
			return ret;
		if (!is_same)
			return -EBADE;
	}

	ret = FUNC7(inode_in, inode_out, pos_out, len,
			remap_flags);
	if (ret)
		return ret;

	/* If can't alter the file contents, we're done. */
	if (!(remap_flags & REMAP_FILE_DEDUP))
		ret = FUNC5(file_out);

	return ret;
}