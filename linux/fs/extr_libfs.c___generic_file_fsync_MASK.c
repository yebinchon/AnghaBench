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
struct inode {int i_state; int /*<<< orphan*/  i_mapping; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int I_DIRTY_ALL ; 
 int I_DIRTY_DATASYNC ; 
 int FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct file *file, loff_t start, loff_t end,
				 int datasync)
{
	struct inode *inode = file->f_mapping->host;
	int err;
	int ret;

	err = FUNC1(file, start, end);
	if (err)
		return err;

	FUNC2(inode);
	ret = FUNC5(inode->i_mapping);
	if (!(inode->i_state & I_DIRTY_ALL))
		goto out;
	if (datasync && !(inode->i_state & I_DIRTY_DATASYNC))
		goto out;

	err = FUNC4(inode, 1);
	if (ret == 0)
		ret = err;

out:
	FUNC3(inode);
	/* check and advance again to catch errors after syncing out buffers */
	err = FUNC0(file);
	if (ret == 0)
		ret = err;
	return ret;
}