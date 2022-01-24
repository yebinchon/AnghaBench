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
struct inode {int /*<<< orphan*/  i_dentry; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_alias; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_seq; TYPE_1__ d_u; } ;

/* Variables and functions */
 int DCACHE_LRU_LIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*,unsigned int) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nr_dentry_negative ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct dentry *dentry, struct inode *inode)
{
	unsigned add_flags = FUNC2(inode);
	FUNC0(FUNC3(dentry));

	FUNC8(&dentry->d_lock);
	/*
	 * Decrement negative dentry count if it was in the LRU list.
	 */
	if (dentry->d_flags & DCACHE_LRU_LIST)
		FUNC10(nr_dentry_negative);
	FUNC5(&dentry->d_u.d_alias, &inode->i_dentry);
	FUNC6(&dentry->d_seq);
	FUNC1(dentry, inode, add_flags);
	FUNC7(&dentry->d_seq);
	FUNC4(dentry);
	FUNC9(&dentry->d_lock);
}