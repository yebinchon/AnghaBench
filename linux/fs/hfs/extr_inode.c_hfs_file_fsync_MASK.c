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
struct super_block {int /*<<< orphan*/  s_bdev; } ;
struct inode {struct super_block* i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int /*<<< orphan*/  mdb_work; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *filp, loff_t start, loff_t end,
			  int datasync)
{
	struct inode *inode = filp->f_mapping->host;
	struct super_block * sb;
	int ret, err;

	ret = FUNC1(filp, start, end);
	if (ret)
		return ret;
	FUNC3(inode);

	/* sync the inode to buffers */
	ret = FUNC6(inode, 0);

	/* sync the superblock to buffers */
	sb = inode->i_sb;
	FUNC2(&FUNC0(sb)->mdb_work);
	/* .. finally sync the buffers to disk */
	err = FUNC5(sb->s_bdev);
	if (!ret)
		ret = err;
	FUNC4(inode);
	return ret;
}