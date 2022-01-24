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
struct dentry {int /*<<< orphan*/  d_parent; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct dentry*) ; 
 int FUNC2 (struct inode*,struct dentry*) ; 
 int FUNC3 (struct inode*,struct dentry*) ; 

__attribute__((used)) static int FUNC4(struct dentry *dentry, void *data)
{
	struct inode *dir = FUNC0(dentry->d_parent);

	/* This is the xattr dir, handle specially. */
	if (FUNC1(dentry))
		return FUNC2(dir, dentry);

	return FUNC3(dir, dentry);
}