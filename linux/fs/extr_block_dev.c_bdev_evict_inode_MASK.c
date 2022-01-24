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
struct inode {int /*<<< orphan*/  i_data; } ;
struct block_device {int /*<<< orphan*/ * bd_bdi; int /*<<< orphan*/  bd_list; } ;
struct TYPE_2__ {struct block_device bdev; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  noop_backing_dev_info ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct inode *inode)
{
	struct block_device *bdev = &FUNC0(inode)->bdev;
	FUNC8(&inode->i_data);
	FUNC4(inode); /* is it needed here? */
	FUNC2(inode);
	FUNC6(&bdev_lock);
	FUNC5(&bdev->bd_list);
	FUNC7(&bdev_lock);
	/* Detach inode from wb early as bdi_put() may free bdi->wb */
	FUNC3(inode);
	if (bdev->bd_bdi != &noop_backing_dev_info) {
		FUNC1(bdev->bd_bdi);
		bdev->bd_bdi = &noop_backing_dev_info;
	}
}