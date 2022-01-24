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
struct inode {int i_state; int /*<<< orphan*/  i_lock; } ;
struct file {TYPE_1__* f_mapping; int /*<<< orphan*/ * private_data; } ;
typedef  int /*<<< orphan*/  fl_owner_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int I_DIRTY_TIME ; 
 int /*<<< orphan*/  LLONG_MAX ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct file *file, fl_owner_t id)
{
	/*
	 * This is vfs_fsync_range(file, 0, LLONG_MAX, 0) without the
	 * service_operation in orangefs_fsync.
	 *
	 * Do not send fsync to OrangeFS server on a close.  Do send fsync
	 * on an explicit fsync call.  This duplicates historical OrangeFS
	 * behavior.
	 */
	struct inode *inode = file->f_mapping->host;
	int r;

	FUNC1(file->private_data);
	file->private_data = NULL;

	if (inode->i_state & I_DIRTY_TIME) {
		FUNC3(&inode->i_lock);
		inode->i_state &= ~I_DIRTY_TIME;
		FUNC4(&inode->i_lock);
		FUNC2(inode);
	}

	r = FUNC0(file->f_mapping, 0, LLONG_MAX);
	if (r > 0)
		return 0;
	else
		return r;
}