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
struct block_device {int bd_block_size; TYPE_1__* bd_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_blkbits; } ;

/* Variables and functions */
 int EINVAL ; 
 int PAGE_SIZE ; 
 int FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 

int FUNC5(struct block_device *bdev, int size)
{
	/* Size must be a power of two, and between 512 and PAGE_SIZE */
	if (size > PAGE_SIZE || size < 512 || !FUNC2(size))
		return -EINVAL;

	/* Size cannot be smaller than the size supported by the device */
	if (size < FUNC0(bdev))
		return -EINVAL;

	/* Don't change the size if it is same as current */
	if (bdev->bd_block_size != size) {
		FUNC4(bdev);
		bdev->bd_block_size = size;
		bdev->bd_inode->i_blkbits = FUNC1(size);
		FUNC3(bdev);
	}
	return 0;
}