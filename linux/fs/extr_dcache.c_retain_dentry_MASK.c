#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  count; } ;
struct dentry {int d_flags; TYPE_2__ d_lockref; TYPE_1__* d_op; } ;
struct TYPE_3__ {scalar_t__ (* d_delete ) (struct dentry*) ;} ;

/* Variables and functions */
 int DCACHE_DISCONNECTED ; 
 int DCACHE_LRU_LIST ; 
 int DCACHE_OP_DELETE ; 
 int DCACHE_REFERENCED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int FUNC3 (struct dentry*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static inline bool FUNC6(struct dentry *dentry)
{
	FUNC0(FUNC1(dentry));

	/* Unreachable? Get rid of it */
	if (FUNC5(FUNC3(dentry)))
		return false;

	if (FUNC5(dentry->d_flags & DCACHE_DISCONNECTED))
		return false;

	if (FUNC5(dentry->d_flags & DCACHE_OP_DELETE)) {
		if (dentry->d_op->d_delete(dentry))
			return false;
	}
	/* retain; LRU fodder */
	dentry->d_lockref.count--;
	if (FUNC5(!(dentry->d_flags & DCACHE_LRU_LIST)))
		FUNC2(dentry);
	else if (FUNC5(!(dentry->d_flags & DCACHE_REFERENCED)))
		dentry->d_flags |= DCACHE_REFERENCED;
	return true;
}