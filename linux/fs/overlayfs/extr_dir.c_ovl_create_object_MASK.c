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
struct ovl_cattr {char const* link; int /*<<< orphan*/  mode; int /*<<< orphan*/  rdev; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_state; } ;
struct dentry {TYPE_1__* d_parent; int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  d_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  I_CREATING ; 
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (struct dentry*,struct inode*,struct ovl_cattr*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct dentry *dentry, int mode, dev_t rdev,
			     const char *link)
{
	int err;
	struct inode *inode;
	struct ovl_cattr attr = {
		.rdev = rdev,
		.link = link,
	};

	err = FUNC6(dentry);
	if (err)
		goto out;

	/* Preallocate inode to be used by ovl_get_inode() */
	err = -ENOMEM;
	inode = FUNC5(dentry->d_sb, mode, rdev);
	if (!inode)
		goto out_drop_write;

	FUNC7(&inode->i_lock);
	inode->i_state |= I_CREATING;
	FUNC8(&inode->i_lock);

	FUNC1(inode, dentry->d_parent->d_inode, mode);
	attr.mode = inode->i_mode;

	err = FUNC3(dentry, inode, &attr, false);
	/* Did we end up using the preallocated inode? */
	if (inode != FUNC0(dentry))
		FUNC2(inode);

out_drop_write:
	FUNC4(dentry);
out:
	return err;
}