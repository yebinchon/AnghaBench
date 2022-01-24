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
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_pos; struct dentry* private_data; TYPE_1__ f_path; } ;
struct dentry {int /*<<< orphan*/  d_inode; int /*<<< orphan*/  d_lock; int /*<<< orphan*/  d_child; int /*<<< orphan*/  d_subdirs; } ;
typedef  int loff_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct dentry* FUNC5 (struct dentry*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

loff_t FUNC8(struct file *file, loff_t offset, int whence)
{
	struct dentry *dentry = file->f_path.dentry;
	switch (whence) {
		case 1:
			offset += file->f_pos;
			/* fall through */
		case 0:
			if (offset >= 0)
				break;
			/* fall through */
		default:
			return -EINVAL;
	}
	if (offset != file->f_pos) {
		struct dentry *cursor = file->private_data;
		struct dentry *to = NULL;

		FUNC1(dentry->d_inode);

		if (offset > 2)
			to = FUNC5(cursor, &dentry->d_subdirs,
					    offset - 2, NULL);
		FUNC6(&dentry->d_lock);
		if (to)
			FUNC4(&cursor->d_child, &to->d_child);
		else
			FUNC3(&cursor->d_child);
		FUNC7(&dentry->d_lock);
		FUNC0(to);

		file->f_pos = offset;

		FUNC2(dentry->d_inode);
	}
	return offset;
}