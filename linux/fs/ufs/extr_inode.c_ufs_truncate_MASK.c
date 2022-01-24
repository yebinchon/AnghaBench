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
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,scalar_t__) ; 
 int FUNC11 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  ufs_getfrag_block ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, loff_t size)
{
	int err = 0;

	FUNC5("ENTER: ino %lu, i_size: %llu, old_i_size: %llu\n",
	     inode->i_ino, (unsigned long long)size,
	     (unsigned long long)FUNC8(inode));

	if (!(FUNC4(inode->i_mode) || FUNC2(inode->i_mode) ||
	      FUNC3(inode->i_mode)))
		return -EINVAL;
	if (FUNC0(inode) || FUNC1(inode))
		return -EPERM;

	err = FUNC11(inode, size);

	if (err)
		goto out;

	FUNC6(inode->i_mapping, size, ufs_getfrag_block);

	FUNC10(inode, size);

	FUNC12(inode);
	inode->i_mtime = inode->i_ctime = FUNC7(inode);
	FUNC9(inode);
out:
	FUNC5("EXIT: err %d\n", err);
	return err;
}