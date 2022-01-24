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
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; TYPE_1__* d_op; scalar_t__ d_inode; int /*<<< orphan*/  d_lockref; struct dentry* d_parent; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* d_release ) (struct dentry*) ;int /*<<< orphan*/  (* d_prune ) (struct dentry*) ;} ;

/* Variables and functions */
 int DCACHE_LRU_LIST ; 
 int DCACHE_MAY_FREE ; 
 int DCACHE_OP_PRUNE ; 
 int DCACHE_SHRINK_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*,struct dentry*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_dentry ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct dentry *dentry)
{
	struct dentry *parent = NULL;
	bool can_free = true;
	if (!FUNC0(dentry))
		parent = dentry->d_parent;

	/*
	 * The dentry is now unrecoverably dead to the world.
	 */
	FUNC8(&dentry->d_lockref);

	/*
	 * inform the fs via d_prune that this dentry is about to be
	 * unhashed and destroyed.
	 */
	if (dentry->d_flags & DCACHE_OP_PRUNE)
		dentry->d_op->d_prune(dentry);

	if (dentry->d_flags & DCACHE_LRU_LIST) {
		if (!(dentry->d_flags & DCACHE_SHRINK_LIST))
			FUNC3(dentry);
	}
	/* if it was on the hash then remove it */
	FUNC1(dentry);
	FUNC6(dentry, parent);
	if (parent)
		FUNC10(&parent->d_lock);
	if (dentry->d_inode)
		FUNC5(dentry);
	else
		FUNC10(&dentry->d_lock);
	FUNC13(nr_dentry);
	if (dentry->d_op && dentry->d_op->d_release)
		dentry->d_op->d_release(dentry);

	FUNC9(&dentry->d_lock);
	if (dentry->d_flags & DCACHE_SHRINK_LIST) {
		dentry->d_flags |= DCACHE_MAY_FREE;
		can_free = false;
	}
	FUNC10(&dentry->d_lock);
	if (FUNC7(can_free))
		FUNC4(dentry);
	FUNC2();
}