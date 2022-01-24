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
struct super_block {unsigned long s_blocksize_bits; struct block_device* s_bdev; } ;
struct block_device {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDROM_LAST_WRITTEN ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct block_device*,int /*<<< orphan*/ ,unsigned long) ; 

unsigned long FUNC2(struct super_block *sb)
{
	struct block_device *bdev = sb->s_bdev;
	unsigned long lblock = 0;

	/*
	 * ioctl failed or returned obviously bogus value?
	 * Try using the device size...
	 */
	if (FUNC1(bdev, CDROM_LAST_WRITTEN, (unsigned long) &lblock) ||
	    lblock == 0)
		lblock = FUNC0(bdev->bd_inode) >> sb->s_blocksize_bits;

	if (lblock)
		return lblock - 1;
	else
		return 0;
}