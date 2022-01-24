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
struct writeback_control {int dummy; } ;
struct page {int dummy; } ;
struct block_device_operations {int (* rw_page ) (struct block_device*,scalar_t__,struct page*,int /*<<< orphan*/ ) ;} ;
struct block_device {int /*<<< orphan*/  bd_queue; TYPE_1__* bd_disk; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct block_device_operations* fops; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int FUNC7 (struct block_device*,scalar_t__,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

int FUNC9(struct block_device *bdev, sector_t sector,
			struct page *page, struct writeback_control *wbc)
{
	int result;
	const struct block_device_operations *ops = bdev->bd_disk->fops;

	if (!ops->rw_page || FUNC0(bdev))
		return -EOPNOTSUPP;
	result = FUNC1(bdev->bd_queue, 0);
	if (result)
		return result;

	FUNC6(page);
	result = ops->rw_page(bdev, sector + FUNC5(bdev), page,
			      REQ_OP_WRITE);
	if (result) {
		FUNC4(page);
	} else {
		FUNC3(page);
		FUNC8(page);
	}
	FUNC2(bdev->bd_queue);
	return result;
}