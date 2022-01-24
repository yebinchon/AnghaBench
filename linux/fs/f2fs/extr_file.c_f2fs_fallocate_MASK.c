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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 long EINVAL ; 
 long EIO ; 
 long ENOSPC ; 
 long EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FALLOC_FL_COLLAPSE_RANGE ; 
 int FALLOC_FL_INSERT_RANGE ; 
 int FALLOC_FL_KEEP_SIZE ; 
 int FALLOC_FL_PUNCH_HOLE ; 
 int FALLOC_FL_ZERO_RANGE ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  REQ_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 long FUNC4 (struct inode*,scalar_t__,scalar_t__,int) ; 
 long FUNC5 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 long FUNC7 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC11 (struct inode*,scalar_t__,scalar_t__,int) ; 
 struct inode* FUNC12 (struct file*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 long FUNC15 (struct inode*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*,int,scalar_t__,scalar_t__,long) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC18(struct file *file, int mode,
				loff_t offset, loff_t len)
{
	struct inode *inode = FUNC12(file);
	long ret = 0;

	if (FUNC17(FUNC6(FUNC0(inode))))
		return -EIO;
	if (!FUNC8(FUNC0(inode)))
		return -ENOSPC;

	/* f2fs only support ->fallocate for regular file */
	if (!FUNC2(inode->i_mode))
		return -EINVAL;

	if (FUNC1(inode) &&
		(mode & (FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_INSERT_RANGE)))
		return -EOPNOTSUPP;

	if (mode & ~(FALLOC_FL_KEEP_SIZE | FALLOC_FL_PUNCH_HOLE |
			FALLOC_FL_COLLAPSE_RANGE | FALLOC_FL_ZERO_RANGE |
			FALLOC_FL_INSERT_RANGE))
		return -EOPNOTSUPP;

	FUNC13(inode);

	if (mode & FALLOC_FL_PUNCH_HOLE) {
		if (offset >= inode->i_size)
			goto out;

		ret = FUNC15(inode, offset, len);
	} else if (mode & FALLOC_FL_COLLAPSE_RANGE) {
		ret = FUNC5(inode, offset, len);
	} else if (mode & FALLOC_FL_ZERO_RANGE) {
		ret = FUNC11(inode, offset, len, mode);
	} else if (mode & FALLOC_FL_INSERT_RANGE) {
		ret = FUNC7(inode, offset, len);
	} else {
		ret = FUNC4(inode, offset, len, mode);
	}

	if (!ret) {
		inode->i_mtime = inode->i_ctime = FUNC3(inode);
		FUNC9(inode, false);
		FUNC10(FUNC0(inode), REQ_TIME);
	}

out:
	FUNC14(inode);

	FUNC16(inode, mode, offset, len, ret);
	return ret;
}