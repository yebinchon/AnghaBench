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
struct buffer_head {int dummy; } ;
struct block_device {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 struct buffer_head* FUNC0 (struct block_device*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 

void FUNC4(struct block_device *bdev,
			sector_t bblock, unsigned blocksize)
{
	struct buffer_head *bh = FUNC0(bdev, bblock + 1, blocksize);
	if (bh) {
		if (FUNC1(bh))
			FUNC2(REQ_OP_WRITE, 0, 1, &bh);
		FUNC3(bh);
	}
}