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
struct block_device {unsigned int bd_block_size; TYPE_1__* bd_inode; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_blkbits; } ;

/* Variables and functions */
 unsigned int PAGE_SIZE ; 
 unsigned int FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(struct block_device *bdev)
{
	unsigned bsize = FUNC0(bdev);
	loff_t size = FUNC2(bdev->bd_inode);

	while (bsize < PAGE_SIZE) {
		if (size & bsize)
			break;
		bsize <<= 1;
	}
	bdev->bd_block_size = bsize;
	bdev->bd_inode->i_blkbits = FUNC1(bsize);
}