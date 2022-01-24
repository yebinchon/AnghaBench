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
struct fuse_inode {struct inode inode; int /*<<< orphan*/  forget; int /*<<< orphan*/  lock; int /*<<< orphan*/  mutex; scalar_t__ state; scalar_t__ orig_ino; scalar_t__ attr_version; scalar_t__ nlookup; scalar_t__ nodeid; scalar_t__ inval_mask; scalar_t__ i_time; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  fuse_inode_cachep ; 
 struct fuse_inode* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fuse_inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct inode *FUNC5(struct super_block *sb)
{
	struct fuse_inode *fi;

	fi = FUNC1(fuse_inode_cachep, GFP_KERNEL);
	if (!fi)
		return NULL;

	fi->i_time = 0;
	fi->inval_mask = 0;
	fi->nodeid = 0;
	fi->nlookup = 0;
	fi->attr_version = 0;
	fi->orig_ino = 0;
	fi->state = 0;
	FUNC3(&fi->mutex);
	FUNC4(&fi->lock);
	fi->forget = FUNC0();
	if (!fi->forget) {
		FUNC2(fuse_inode_cachep, fi);
		return NULL;
	}

	return &fi->inode;
}