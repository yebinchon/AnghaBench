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
struct inode {struct inode* i_private; int /*<<< orphan*/  i_ino; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {struct dentry* __upperdentry; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned long) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct inode *inode, struct dentry *upperdentry)
{
	struct inode *upperinode = FUNC3(upperdentry);

	FUNC1(FUNC0(inode)->__upperdentry);

	/*
	 * Make sure upperdentry is consistent before making it visible
	 */
	FUNC5();
	FUNC0(inode)->__upperdentry = upperdentry;
	if (FUNC4(inode)) {
		if (!inode->i_ino)
			inode->i_ino = upperinode->i_ino;
		inode->i_private = upperinode;
		FUNC2(inode, (unsigned long) upperinode);
	}
}