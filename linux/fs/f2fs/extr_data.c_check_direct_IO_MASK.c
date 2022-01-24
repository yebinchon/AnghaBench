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
struct iov_iter {int dummy; } ;
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_blkbits; } ;
struct block_device {int dummy; } ;
typedef  unsigned long loff_t ;
struct TYPE_2__ {struct block_device* s_bdev; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (struct iov_iter*) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct iov_iter *iter,
			   loff_t offset)
{
	unsigned i_blkbits = FUNC0(inode->i_blkbits);
	unsigned blkbits = i_blkbits;
	unsigned blocksize_mask = (1 << blkbits) - 1;
	unsigned long align = offset | FUNC3(iter);
	struct block_device *bdev = inode->i_sb->s_bdev;

	if (align & blocksize_mask) {
		if (bdev)
			blkbits = FUNC2(FUNC1(bdev));
		blocksize_mask = (1 << blkbits) - 1;
		if (align & blocksize_mask)
			return -EINVAL;
		return 1;
	}
	return 0;
}