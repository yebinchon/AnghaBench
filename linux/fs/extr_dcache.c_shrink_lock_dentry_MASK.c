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
struct inode {int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {int count; } ;
struct dentry {int /*<<< orphan*/  d_lock; TYPE_1__ d_lockref; struct dentry* d_parent; struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  DENTRY_D_LOCK_NESTED ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bool FUNC7(struct dentry *dentry)
{
	struct inode *inode;
	struct dentry *parent;

	if (dentry->d_lockref.count)
		return false;

	inode = dentry->d_inode;
	if (inode && FUNC6(!FUNC4(&inode->i_lock))) {
		FUNC5(&dentry->d_lock);
		FUNC2(&inode->i_lock);
		FUNC2(&dentry->d_lock);
		if (FUNC6(dentry->d_lockref.count))
			goto out;
		/* changed inode means that somebody had grabbed it */
		if (FUNC6(inode != dentry->d_inode))
			goto out;
	}

	parent = dentry->d_parent;
	if (FUNC0(dentry) || FUNC1(FUNC4(&parent->d_lock)))
		return true;

	FUNC5(&dentry->d_lock);
	FUNC2(&parent->d_lock);
	if (FUNC6(parent != dentry->d_parent)) {
		FUNC5(&parent->d_lock);
		FUNC2(&dentry->d_lock);
		goto out;
	}
	FUNC3(&dentry->d_lock, DENTRY_D_LOCK_NESTED);
	if (FUNC1(!dentry->d_lockref.count))
		return true;
	FUNC5(&parent->d_lock);
out:
	if (inode)
		FUNC5(&inode->i_lock);
	return false;
}