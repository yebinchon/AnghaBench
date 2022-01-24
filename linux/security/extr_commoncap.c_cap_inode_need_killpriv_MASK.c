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
 int /*<<< orphan*/  XATTR_NAME_CAPS ; 
 int FUNC0 (struct dentry*,struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct dentry*) ; 

int FUNC2(struct dentry *dentry)
{
	struct inode *inode = FUNC1(dentry);
	int error;

	error = FUNC0(dentry, inode, XATTR_NAME_CAPS, NULL, 0);
	return error > 0;
}