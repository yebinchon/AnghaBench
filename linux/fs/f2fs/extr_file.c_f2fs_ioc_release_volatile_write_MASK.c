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
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 int /*<<< orphan*/  F2FS_BLKSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*) ; 
 int FUNC7 (struct file*) ; 
 int FUNC8 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct inode*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct file *filp)
{
	struct inode *inode = FUNC2(filp);
	int ret;

	if (!FUNC4(inode))
		return -EACCES;

	ret = FUNC7(filp);
	if (ret)
		return ret;

	FUNC3(inode);

	if (!FUNC1(inode))
		goto out;

	if (!FUNC0(inode)) {
		ret = FUNC9(inode, 0, true);
		goto out;
	}

	ret = FUNC8(inode, 0, F2FS_BLKSIZE);
out:
	FUNC5(inode);
	FUNC6(filp);
	return ret;
}