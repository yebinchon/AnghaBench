#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int i_state; int /*<<< orphan*/  i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  log; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int EIO ; 
 int I_DIRTY_ALL ; 
 int I_DIRTY_DATASYNC ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

int FUNC6(struct file *file, loff_t start, loff_t end, int datasync)
{
	struct inode *inode = file->f_mapping->host;
	int rc = 0;

	rc = FUNC1(file, start, end);
	if (rc)
		return rc;

	FUNC2(inode);
	if (!(inode->i_state & I_DIRTY_ALL) ||
	    (datasync && !(inode->i_state & I_DIRTY_DATASYNC))) {
		/* Make sure committed changes hit the disk */
		FUNC5(FUNC0(inode->i_sb)->log, 1);
		FUNC3(inode);
		return rc;
	}

	rc |= FUNC4(inode, 1);
	FUNC3(inode);

	return rc ? -EIO : 0;
}