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
struct op_inode_info {struct inode vfs_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct op_inode_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  op_inode_cachep ; 

__attribute__((used)) static struct inode *FUNC1(struct super_block *sb)
{
	struct op_inode_info *oi;

	oi = FUNC0(op_inode_cachep, GFP_KERNEL);
	if (!oi)
		return NULL;

	return &oi->vfs_inode;
}