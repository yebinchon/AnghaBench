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
struct inode {int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  NOBH ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext2_get_block ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  ext2_iomap_ops ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (struct inode*) ; 
 int FUNC16 (struct inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC23(struct inode *inode, loff_t newsize)
{
	int error;

	if (!(FUNC7(inode->i_mode) || FUNC5(inode->i_mode) ||
	    FUNC6(inode->i_mode)))
		return -EINVAL;
	if (FUNC13(inode))
		return -EINVAL;
	if (FUNC1(inode) || FUNC3(inode))
		return -EPERM;

	FUNC14(inode);

	if (FUNC2(inode)) {
		error = FUNC16(inode, newsize,
					 FUNC4(newsize) - newsize, NULL,
					 &ext2_iomap_ops);
	} else if (FUNC21(inode->i_sb, NOBH))
		error = FUNC18(inode->i_mapping,
				newsize, ext2_get_block);
	else
		error = FUNC9(inode->i_mapping,
				newsize, ext2_get_block);
	if (error)
		return error;

	FUNC11(FUNC0(inode));
	FUNC22(inode, newsize);
	FUNC8(inode, newsize);
	FUNC12(FUNC0(inode));

	inode->i_mtime = inode->i_ctime = FUNC10(inode);
	if (FUNC15(inode)) {
		FUNC20(inode->i_mapping);
		FUNC19(inode, 1);
	} else {
		FUNC17(inode);
	}

	return 0;
}