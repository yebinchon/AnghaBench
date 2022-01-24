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
struct block_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned short) ; 
 unsigned short FUNC1 (struct block_device*) ; 

__attribute__((used)) static bool FUNC2(struct block_device *bdev,
				 unsigned int offset, unsigned int length)
{
	unsigned short sector_size = FUNC1(bdev);

	if (!FUNC0(offset, sector_size))
		return false;
	if (!FUNC0(length, sector_size))
		return false;

	return true;
}