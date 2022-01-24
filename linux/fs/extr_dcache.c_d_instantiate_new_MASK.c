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
struct inode {int i_state; int /*<<< orphan*/  i_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  d_alias; } ;
struct dentry {TYPE_1__ d_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I_CREATING ; 
 int I_NEW ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  __I_NEW ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int*,int /*<<< orphan*/ ) ; 

void FUNC10(struct dentry *entry, struct inode *inode)
{
	FUNC0(!FUNC3(&entry->d_u.d_alias));
	FUNC0(!inode);
	FUNC4(inode);
	FUNC5(entry, inode);
	FUNC7(&inode->i_lock);
	FUNC2(entry, inode);
	FUNC1(!(inode->i_state & I_NEW));
	inode->i_state &= ~I_NEW & ~I_CREATING;
	FUNC6();
	FUNC9(&inode->i_state, __I_NEW);
	FUNC8(&inode->i_lock);
}