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
struct ocfs2_inode_info {int ip_flags; int /*<<< orphan*/  ip_lock; int /*<<< orphan*/  ip_open_count; scalar_t__ ip_blkno; } ;
struct inode {int dummy; } ;
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {int f_flags; int f_mode; TYPE_2__ f_path; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  len; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 int ENOENT ; 
 int FMODE_NOWAIT ; 
 int FMODE_WRITE ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 int OCFS2_INODE_OPEN_DIRECT ; 
 int O_DIRECT ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct file*,TYPE_3__*,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	int status;
	int mode = file->f_flags;
	struct ocfs2_inode_info *oi = FUNC0(inode);

	FUNC5(inode, file, file->f_path.dentry,
			      (unsigned long long)oi->ip_blkno,
			      file->f_path.dentry->d_name.len,
			      file->f_path.dentry->d_name.name, mode);

	if (file->f_mode & FMODE_WRITE) {
		status = FUNC1(inode);
		if (status)
			goto leave;
	}

	FUNC3(&oi->ip_lock);

	/* Check that the inode hasn't been wiped from disk by another
	 * node. If it hasn't then we're safe as long as we hold the
	 * spin lock until our increment of open count. */
	if (oi->ip_flags & OCFS2_INODE_DELETED) {
		FUNC4(&oi->ip_lock);

		status = -ENOENT;
		goto leave;
	}

	if (mode & O_DIRECT)
		oi->ip_flags |= OCFS2_INODE_OPEN_DIRECT;

	oi->ip_open_count++;
	FUNC4(&oi->ip_lock);

	status = FUNC2(inode, file);
	if (status) {
		/*
		 * We want to set open count back if we're failing the
		 * open.
		 */
		FUNC3(&oi->ip_lock);
		oi->ip_open_count--;
		FUNC4(&oi->ip_lock);
	}

	file->f_mode |= FMODE_NOWAIT;

leave:
	return status;
}