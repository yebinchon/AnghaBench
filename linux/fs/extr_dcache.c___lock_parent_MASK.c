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
struct dentry {int /*<<< orphan*/  d_lock; struct dentry* d_parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  DENTRY_D_LOCK_NESTED ; 
 struct dentry* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *dentry)
{
	struct dentry *parent;
	FUNC1();
	FUNC5(&dentry->d_lock);
again:
	parent = FUNC0(dentry->d_parent);
	FUNC3(&parent->d_lock);
	/*
	 * We can't blindly lock dentry until we are sure
	 * that we won't violate the locking order.
	 * Any changes of dentry->d_parent must have
	 * been done with parent->d_lock held, so
	 * spin_lock() above is enough of a barrier
	 * for checking if it's still our child.
	 */
	if (FUNC6(parent != dentry->d_parent)) {
		FUNC5(&parent->d_lock);
		goto again;
	}
	FUNC2();
	if (parent != dentry)
		FUNC4(&dentry->d_lock, DENTRY_D_LOCK_NESTED);
	else
		parent = NULL;
	return parent;
}