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
 struct inode* FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(struct dentry *dentry)
{
	struct inode *inode = FUNC0(dentry);
	bool inuse;

	FUNC1(&inode->i_lock);
	inuse = (inode->i_state & I_OVL_INUSE);
	FUNC2(&inode->i_lock);

	return inuse;
}