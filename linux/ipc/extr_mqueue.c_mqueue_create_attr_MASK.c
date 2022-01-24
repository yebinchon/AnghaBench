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
typedef  int /*<<< orphan*/  umode_t ;
struct mq_attr {int dummy; } ;
struct ipc_namespace {scalar_t__ mq_queues_count; scalar_t__ mq_queues_max; } ;
struct inode {int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_sb; } ;
struct dentry {TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RESOURCE ; 
 scalar_t__ DIRENT_SIZE ; 
 int EACCES ; 
 int ENOSPC ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 struct ipc_namespace* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  mq_lock ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ,struct ipc_namespace*,int /*<<< orphan*/ ,struct mq_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct ipc_namespace*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct dentry *dentry, umode_t mode, void *arg)
{
	struct inode *dir = dentry->d_parent->d_inode;
	struct inode *inode;
	struct mq_attr *attr = arg;
	int error;
	struct ipc_namespace *ipc_ns;

	FUNC9(&mq_lock);
	ipc_ns = FUNC2(dir);
	if (!ipc_ns) {
		error = -EACCES;
		goto out_unlock;
	}

	if (ipc_ns->mq_queues_count >= ipc_ns->mq_queues_max &&
	    !FUNC3(CAP_SYS_RESOURCE)) {
		error = -ENOSPC;
		goto out_unlock;
	}
	ipc_ns->mq_queues_count++;
	FUNC10(&mq_lock);

	inode = FUNC7(dir->i_sb, ipc_ns, mode, attr);
	if (FUNC0(inode)) {
		error = FUNC1(inode);
		FUNC9(&mq_lock);
		ipc_ns->mq_queues_count--;
		goto out_unlock;
	}

	FUNC8(ipc_ns);
	dir->i_size += DIRENT_SIZE;
	dir->i_ctime = dir->i_mtime = dir->i_atime = FUNC4(dir);

	FUNC5(dentry, inode);
	FUNC6(dentry);
	return 0;
out_unlock:
	FUNC10(&mq_lock);
	if (ipc_ns)
		FUNC8(ipc_ns);
	return error;
}