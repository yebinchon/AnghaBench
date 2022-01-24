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
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct msdos_inode_info {struct inode vfs_inode; int /*<<< orphan*/  truncate_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  fat_inode_cachep ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct msdos_inode_info* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct msdos_inode_info *ei;
	ei = FUNC1(fat_inode_cachep, GFP_NOFS);
	if (!ei)
		return NULL;

	FUNC0(&ei->truncate_lock);
	return &ei->vfs_inode;
}