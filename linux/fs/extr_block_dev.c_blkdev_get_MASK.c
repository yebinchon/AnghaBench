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
struct gendisk {int flags; } ;
struct block_device {int bd_write_holder; int /*<<< orphan*/  bd_mutex; struct gendisk* bd_disk; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int FMODE_EXCL ; 
 int FMODE_WRITE ; 
 int GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE ; 
 scalar_t__ FUNC0 (struct block_device*) ; 
 int FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct block_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*,struct block_device*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*,struct block_device*,void*) ; 
 struct block_device* FUNC6 (struct block_device*,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct block_device *bdev, fmode_t mode, void *holder)
{
	struct block_device *whole = NULL;
	int res;

	FUNC2((mode & FMODE_EXCL) && !holder);

	if ((mode & FMODE_EXCL) && holder) {
		whole = FUNC6(bdev, holder);
		if (FUNC0(whole)) {
			FUNC7(bdev);
			return FUNC1(whole);
		}
	}

	res = FUNC3(bdev, mode, 0);

	if (whole) {
		struct gendisk *disk = whole->bd_disk;

		/* finish claiming */
		FUNC9(&bdev->bd_mutex);
		if (!res)
			FUNC5(bdev, whole, holder);
		else
			FUNC4(bdev, whole, holder);
		/*
		 * Block event polling for write claims if requested.  Any
		 * write holder makes the write_holder state stick until
		 * all are released.  This is good enough and tracking
		 * individual writeable reference is too fragile given the
		 * way @mode is used in blkdev_get/put().
		 */
		if (!res && (mode & FMODE_WRITE) && !bdev->bd_write_holder &&
		    (disk->flags & GENHD_FL_BLOCK_EVENTS_ON_EXCL_WRITE)) {
			bdev->bd_write_holder = true;
			FUNC8(disk);
		}

		FUNC10(&bdev->bd_mutex);
		FUNC7(whole);
	}

	return res;
}