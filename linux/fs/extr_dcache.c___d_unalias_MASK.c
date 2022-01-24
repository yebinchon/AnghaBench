#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rw_semaphore {int dummy; } ;
struct mutex {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_2__* d_parent; TYPE_1__* d_sb; } ;
struct TYPE_6__ {struct rw_semaphore i_rwsem; } ;
struct TYPE_5__ {TYPE_3__* d_inode; } ;
struct TYPE_4__ {struct mutex s_vfs_rename_mutex; } ;

/* Variables and functions */
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct dentry*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC3 (struct mutex*) ; 
 int /*<<< orphan*/  FUNC4 (struct rw_semaphore*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode,
		struct dentry *dentry, struct dentry *alias)
{
	struct mutex *m1 = NULL;
	struct rw_semaphore *m2 = NULL;
	int ret = -ESTALE;

	/* If alias and dentry share a parent, then no extra locks required */
	if (alias->d_parent == dentry->d_parent)
		goto out_unalias;

	/* See lock_rename() */
	if (!FUNC2(&dentry->d_sb->s_vfs_rename_mutex))
		goto out_err;
	m1 = &dentry->d_sb->s_vfs_rename_mutex;
	if (!FUNC1(alias->d_parent->d_inode))
		goto out_err;
	m2 = &alias->d_parent->d_inode->i_rwsem;
out_unalias:
	FUNC0(alias, dentry, false);
	ret = 0;
out_err:
	if (m2)
		FUNC4(m2);
	if (m1)
		FUNC3(m1);
	return ret;
}