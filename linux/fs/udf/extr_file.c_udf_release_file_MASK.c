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
struct inode {int /*<<< orphan*/  i_writecount; } ;
struct file {int f_mode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_data_sem; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filp)
{
	if (filp->f_mode & FMODE_WRITE &&
	    FUNC1(&inode->i_writecount) == 1) {
		/*
		 * Grab i_mutex to avoid races with writes changing i_size
		 * while we are running.
		 */
		FUNC3(inode);
		FUNC2(&FUNC0(inode)->i_data_sem);
		FUNC5(inode);
		FUNC6(inode);
		FUNC7(&FUNC0(inode)->i_data_sem);
		FUNC4(inode);
	}
	return 0;
}