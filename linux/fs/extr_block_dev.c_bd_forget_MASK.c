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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/ * i_mapping; struct block_device* i_bdev; int /*<<< orphan*/  i_sb; } ;
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/  FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct inode *inode)
{
	struct block_device *bdev = NULL;

	FUNC2(&bdev_lock);
	if (!FUNC1(inode->i_sb))
		bdev = inode->i_bdev;
	inode->i_bdev = NULL;
	inode->i_mapping = &inode->i_data;
	FUNC3(&bdev_lock);

	if (bdev)
		FUNC0(bdev);
}