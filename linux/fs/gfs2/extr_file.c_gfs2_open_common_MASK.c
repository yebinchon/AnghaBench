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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct gfs2_file {int /*<<< orphan*/  f_fl_mutex; } ;
struct file {struct gfs2_file* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 struct gfs2_file* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode, struct file *file)
{
	struct gfs2_file *fp;
	int ret;

	if (FUNC1(inode->i_mode)) {
		ret = FUNC2(inode, file);
		if (ret)
			return ret;
	}

	fp = FUNC4(sizeof(struct gfs2_file), GFP_NOFS);
	if (!fp)
		return -ENOMEM;

	FUNC5(&fp->f_fl_mutex);

	FUNC3(FUNC0(inode), !file->private_data);
	file->private_data = fp;
	return 0;
}