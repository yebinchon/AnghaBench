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
struct inode {int i_state; int /*<<< orphan*/  i_lock; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int I_OVL_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct inode* FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct dentry *dentry)
{
	if (dentry) {
		struct inode *inode = FUNC1(dentry);

		FUNC2(&inode->i_lock);
		FUNC0(!(inode->i_state & I_OVL_INUSE));
		inode->i_state &= ~I_OVL_INUSE;
		FUNC3(&inode->i_lock);
	}
}