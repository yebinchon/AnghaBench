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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 struct inode* FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 

__attribute__((used)) static int FUNC4 (struct inode * dir, struct dentry *dentry)
{
	struct inode * inode = FUNC0(dentry);
	int err = -ENOTEMPTY;

	if (FUNC1(inode)) {
		err = FUNC2(dir, dentry);
		if (!err) {
			inode->i_size = 0;
			FUNC3(inode);
			FUNC3(dir);
		}
	}
	return err;
}