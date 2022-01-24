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
struct jfs_inode_info {struct inode vfs_inode; int /*<<< orphan*/  i_dquot; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  jfs_inode_cachep ; 
 struct jfs_inode_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct jfs_inode_info *jfs_inode;

	jfs_inode = FUNC0(jfs_inode_cachep, GFP_NOFS);
	if (!jfs_inode)
		return NULL;
#ifdef CONFIG_QUOTA
	memset(&jfs_inode->i_dquot, 0, sizeof(jfs_inode->i_dquot));
#endif
	return &jfs_inode->vfs_inode;
}