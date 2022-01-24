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
struct gendisk {TYPE_1__* fops; } ;
struct block_device {int /*<<< orphan*/  bd_mutex; struct block_device* bd_contains; struct gendisk* bd_disk; int /*<<< orphan*/ * bd_part; int /*<<< orphan*/  bd_openers; int /*<<< orphan*/  bd_holders; int /*<<< orphan*/  bd_part_count; } ;
typedef  int /*<<< orphan*/  fmode_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* release ) (struct gendisk*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct block_device*) ; 

__attribute__((used)) static void FUNC10(struct block_device *bdev, fmode_t mode, int for_part)
{
	struct gendisk *disk = bdev->bd_disk;
	struct block_device *victim = NULL;

	FUNC5(&bdev->bd_mutex, for_part);
	if (for_part)
		bdev->bd_part_count--;

	if (!--bdev->bd_openers) {
		FUNC0(bdev->bd_holders);
		FUNC9(bdev);
		FUNC4(bdev);

		FUNC1(bdev);
	}
	if (bdev->bd_contains == bdev) {
		if (disk->fops->release)
			disk->fops->release(disk, mode);
	}
	if (!bdev->bd_openers) {
		FUNC3(bdev->bd_part);
		bdev->bd_part = NULL;
		bdev->bd_disk = NULL;
		if (bdev != bdev->bd_contains)
			victim = bdev->bd_contains;
		bdev->bd_contains = NULL;

		FUNC7(disk);
	}
	FUNC6(&bdev->bd_mutex);
	FUNC2(bdev);
	if (victim)
		FUNC10(victim, mode, 1);
}