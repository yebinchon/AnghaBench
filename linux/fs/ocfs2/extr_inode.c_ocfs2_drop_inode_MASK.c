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
struct ocfs2_inode_info {int /*<<< orphan*/  ip_flags; scalar_t__ ip_blkno; } ;
struct inode {int i_state; int /*<<< orphan*/  i_lock; int /*<<< orphan*/  i_nlink; } ;

/* Variables and functions */
 int I_NEW ; 
 int I_WILL_FREE ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 

int FUNC7(struct inode *inode)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);

	FUNC5((unsigned long long)oi->ip_blkno,
				inode->i_nlink, oi->ip_flags);

	FUNC2(&inode->i_lock);
	inode->i_state |= I_WILL_FREE;
	FUNC4(&inode->i_lock);
	FUNC6(inode, 1);
	FUNC3(&inode->i_lock);
	FUNC1(inode->i_state & I_NEW);
	inode->i_state &= ~I_WILL_FREE;

	return 1;
}