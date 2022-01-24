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
struct TYPE_3__ {int /*<<< orphan*/ * a_ops; } ;
struct inode {int i_state; TYPE_1__ i_data; struct block_device* i_bdev; int /*<<< orphan*/  i_rdev; int /*<<< orphan*/  i_mode; } ;
struct block_device {int /*<<< orphan*/  bd_list; scalar_t__ bd_invalidated; scalar_t__ bd_part_count; int /*<<< orphan*/  bd_block_size; struct inode* bd_inode; int /*<<< orphan*/ * bd_super; int /*<<< orphan*/ * bd_contains; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {struct block_device bdev; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  GFP_USER ; 
 int I_NEW ; 
 int /*<<< orphan*/  S_IFBLK ; 
 int /*<<< orphan*/  all_bdevs ; 
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/  bdev_set ; 
 int /*<<< orphan*/  bdev_test ; 
 int /*<<< orphan*/  blockdev_superblock ; 
 int /*<<< orphan*/  def_blk_aops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 

struct block_device *FUNC9(dev_t dev)
{
	struct block_device *bdev;
	struct inode *inode;

	inode = FUNC3(blockdev_superblock, FUNC1(dev),
			bdev_test, bdev_set, &dev);

	if (!inode)
		return NULL;

	bdev = &FUNC0(inode)->bdev;

	if (inode->i_state & I_NEW) {
		bdev->bd_contains = NULL;
		bdev->bd_super = NULL;
		bdev->bd_inode = inode;
		bdev->bd_block_size = FUNC2(inode);
		bdev->bd_part_count = 0;
		bdev->bd_invalidated = 0;
		inode->i_mode = S_IFBLK;
		inode->i_rdev = dev;
		inode->i_bdev = bdev;
		inode->i_data.a_ops = &def_blk_aops;
		FUNC5(&inode->i_data, GFP_USER);
		FUNC6(&bdev_lock);
		FUNC4(&bdev->bd_list, &all_bdevs);
		FUNC7(&bdev_lock);
		FUNC8(inode);
	}
	return bdev;
}