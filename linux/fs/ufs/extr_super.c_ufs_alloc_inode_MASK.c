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
struct inode {int dummy; } ;
struct ufs_inode_info {struct inode vfs_inode; int /*<<< orphan*/  truncate_mutex; int /*<<< orphan*/  meta_lock; } ;
struct super_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,int) ; 
 struct ufs_inode_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ufs_inode_cachep ; 

__attribute__((used)) static struct inode *FUNC4(struct super_block *sb)
{
	struct ufs_inode_info *ei;

	ei = FUNC1(ufs_inode_cachep, GFP_NOFS);
	if (!ei)
		return NULL;

	FUNC0(&ei->vfs_inode, 1);
	FUNC3(&ei->meta_lock);
	FUNC2(&ei->truncate_mutex);
	return &ei->vfs_inode;
}