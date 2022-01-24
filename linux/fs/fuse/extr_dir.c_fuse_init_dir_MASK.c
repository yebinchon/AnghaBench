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
struct inode {int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; } ;
struct TYPE_2__ {int cached; scalar_t__ version; scalar_t__ pos; scalar_t__ size; int /*<<< orphan*/  lock; } ;
struct fuse_inode {TYPE_1__ rdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  fuse_dir_inode_operations ; 
 int /*<<< orphan*/  fuse_dir_operations ; 
 struct fuse_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct inode *inode)
{
	struct fuse_inode *fi = FUNC0(inode);

	inode->i_op = &fuse_dir_inode_operations;
	inode->i_fop = &fuse_dir_operations;

	FUNC1(&fi->rdc.lock);
	fi->rdc.cached = false;
	fi->rdc.size = 0;
	fi->rdc.pos = 0;
	fi->rdc.version = 0;
}