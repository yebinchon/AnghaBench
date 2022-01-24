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
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct buffer_head* FUNC0 (struct buffer_head*) ; 
 struct buffer_head* FUNC1 (struct block_device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 scalar_t__ FUNC3 (struct buffer_head*) ; 

struct buffer_head *
FUNC4(struct block_device *bdev, sector_t block,
		   unsigned size, gfp_t gfp)
{
	struct buffer_head *bh = FUNC1(bdev, block, size, gfp);

	if (FUNC3(bh) && !FUNC2(bh))
		bh = FUNC0(bh);
	return bh;
}