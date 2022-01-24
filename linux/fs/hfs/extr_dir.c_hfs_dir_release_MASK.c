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
struct inode {int dummy; } ;
struct hfs_readdir_data {int /*<<< orphan*/  list; } ;
struct file {struct hfs_readdir_data* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  open_dir_lock; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct hfs_readdir_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct hfs_readdir_data *rd = file->private_data;
	if (rd) {
		FUNC3(&FUNC0(inode)->open_dir_lock);
		FUNC2(&rd->list);
		FUNC4(&FUNC0(inode)->open_dir_lock);
		FUNC1(rd);
	}
	return 0;
}