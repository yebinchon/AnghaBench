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
struct page {int dummy; } ;
struct block_device_operations {int (* rw_page ) (struct block_device*,scalar_t__,struct page*,int /*<<< orphan*/ ) ;} ;
struct block_device {int /*<<< orphan*/  bd_queue; TYPE_1__* bd_disk; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct block_device_operations* fops; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct block_device*) ; 
 int FUNC4 (struct block_device*,scalar_t__,struct page*,int /*<<< orphan*/ ) ; 

int FUNC5(struct block_device *bdev, sector_t sector,
			struct page *page)
{
	const struct block_device_operations *ops = bdev->bd_disk->fops;
	int result = -EOPNOTSUPP;

	if (!ops->rw_page || FUNC0(bdev))
		return result;

	result = FUNC1(bdev->bd_queue, 0);
	if (result)
		return result;
	result = ops->rw_page(bdev, sector + FUNC3(bdev), page,
			      REQ_OP_READ);
	FUNC2(bdev->bd_queue);
	return result;
}