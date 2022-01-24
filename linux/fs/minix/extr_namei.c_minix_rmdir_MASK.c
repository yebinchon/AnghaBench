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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOTEMPTY ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC4(struct inode * dir, struct dentry *dentry)
{
	struct inode * inode = FUNC0(dentry);
	int err = -ENOTEMPTY;

	if (FUNC2(inode)) {
		err = FUNC3(dir, dentry);
		if (!err) {
			FUNC1(dir);
			FUNC1(inode);
		}
	}
	return err;
}