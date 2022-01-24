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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct block_device* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (struct file*) ; 
 int FUNC2 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(struct file *filp, loff_t start, loff_t end, int datasync)
{
	struct inode *bd_inode = FUNC1(filp);
	struct block_device *bdev = FUNC0(bd_inode);
	int error;
	
	error = FUNC3(filp, start, end);
	if (error)
		return error;

	/*
	 * There is no need to serialise calls to blkdev_issue_flush with
	 * i_mutex and doing so causes performance issues with concurrent
	 * O_SYNC writers to a block device.
	 */
	error = FUNC2(bdev, GFP_KERNEL, NULL);
	if (error == -EOPNOTSUPP)
		error = 0;

	return error;
}