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
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_sb_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_inode_list_lock; int /*<<< orphan*/  s_inodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct inode *inode)
{
	FUNC1(&inode->i_sb->s_inode_list_lock);
	FUNC0(&inode->i_sb_list, &inode->i_sb->s_inodes);
	FUNC2(&inode->i_sb->s_inode_list_lock);
}