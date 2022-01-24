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
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  rename_lock ; 

bool FUNC5(struct dentry *new_dentry, struct dentry *old_dentry)
{
	bool result;
	unsigned seq;

	if (new_dentry == old_dentry)
		return true;

	do {
		/* for restarting inner loop in case of seq retry */
		seq = FUNC3(&rename_lock);
		/*
		 * Need rcu_readlock to protect against the d_parent trashing
		 * due to d_move
		 */
		FUNC1();
		if (FUNC0(old_dentry, new_dentry))
			result = true;
		else
			result = false;
		FUNC2();
	} while (FUNC4(&rename_lock, seq));

	return result;
}