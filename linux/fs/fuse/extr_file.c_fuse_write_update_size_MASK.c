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
struct inode {scalar_t__ i_size; } ;
struct fuse_inode {int /*<<< orphan*/  lock; int /*<<< orphan*/  attr_version; } ;
struct fuse_conn {int /*<<< orphan*/  attr_version; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fuse_conn* FUNC1 (struct inode*) ; 
 struct fuse_inode* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct inode *inode, loff_t pos)
{
	struct fuse_conn *fc = FUNC1(inode);
	struct fuse_inode *fi = FUNC2(inode);
	bool ret = false;

	FUNC4(&fi->lock);
	fi->attr_version = FUNC0(&fc->attr_version);
	if (pos > inode->i_size) {
		FUNC3(inode, pos);
		ret = true;
	}
	FUNC5(&fi->lock);

	return ret;
}