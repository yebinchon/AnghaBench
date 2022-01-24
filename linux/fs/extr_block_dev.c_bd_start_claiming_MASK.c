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
struct gendisk {int dummy; } ;
struct block_device {void* bd_claiming; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 struct block_device* FUNC0 (int) ; 
 int FUNC1 (struct block_device*,struct block_device*,void*) ; 
 struct gendisk* FUNC2 (struct block_device*,int*) ; 
 int /*<<< orphan*/  bdev_lock ; 
 struct block_device* FUNC3 (struct gendisk*,int /*<<< orphan*/ ) ; 
 struct block_device* FUNC4 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct block_device *FUNC10(struct block_device *bdev, void *holder)
{
	struct gendisk *disk;
	struct block_device *whole;
	int partno, err;

	FUNC6();

	/*
	 * @bdev might not have been initialized properly yet, look up
	 * and grab the outer block device the hard way.
	 */
	disk = FUNC2(bdev, &partno);
	if (!disk)
		return FUNC0(-ENXIO);

	/*
	 * Normally, @bdev should equal what's returned from bdget_disk()
	 * if partno is 0; however, some drivers (floppy) use multiple
	 * bdev's for the same physical device and @bdev may be one of the
	 * aliases.  Keep @bdev if partno is 0.  This means claimer
	 * tracking is broken for those devices but it has always been that
	 * way.
	 */
	if (partno)
		whole = FUNC3(disk, 0);
	else
		whole = FUNC4(bdev);

	FUNC7(disk);
	if (!whole)
		return FUNC0(-ENOMEM);

	/* prepare to claim, if successful, mark claiming in progress */
	FUNC8(&bdev_lock);

	err = FUNC1(bdev, whole, holder);
	if (err == 0) {
		whole->bd_claiming = holder;
		FUNC9(&bdev_lock);
		return whole;
	} else {
		FUNC9(&bdev_lock);
		FUNC5(whole);
		return FUNC0(err);
	}
}