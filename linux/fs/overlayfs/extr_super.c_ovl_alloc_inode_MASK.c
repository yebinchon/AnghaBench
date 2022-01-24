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
struct ovl_inode {struct inode vfs_inode; int /*<<< orphan*/  lock; int /*<<< orphan*/ * lowerdata; int /*<<< orphan*/ * lower; int /*<<< orphan*/ * __upperdentry; scalar_t__ flags; scalar_t__ version; int /*<<< orphan*/ * redirect; int /*<<< orphan*/ * cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ovl_inode* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ovl_inode_cachep ; 

__attribute__((used)) static struct inode *FUNC2(struct super_block *sb)
{
	struct ovl_inode *oi = FUNC0(ovl_inode_cachep, GFP_KERNEL);

	if (!oi)
		return NULL;

	oi->cache = NULL;
	oi->redirect = NULL;
	oi->version = 0;
	oi->flags = 0;
	oi->__upperdentry = NULL;
	oi->lower = NULL;
	oi->lowerdata = NULL;
	FUNC1(&oi->lock);

	return &oi->vfs_inode;
}