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
struct dentry {int d_flags; } ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 scalar_t__ FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,int) ; 
 scalar_t__ FUNC2 (struct dentry*) ; 

bool FUNC3(struct dentry *dentry, int flags)
{
	bool disconnected = dentry->d_flags & DCACHE_DISCONNECTED;

	/*
	 * Check if copy-up has happened as well as for upper alias (in
	 * case of hard links) is there.
	 *
	 * Both checks are lockless:
	 *  - false negatives: will recheck under oi->lock
	 *  - false positives:
	 *    + ovl_dentry_upper() uses memory barriers to ensure the
	 *      upper dentry is up-to-date
	 *    + ovl_dentry_has_upper_alias() relies on locking of
	 *      upper parent i_rwsem to prevent reordering copy-up
	 *      with rename.
	 */
	if (FUNC2(dentry) &&
	    (FUNC0(dentry) || disconnected) &&
	    !FUNC1(dentry, flags))
		return true;

	return false;
}