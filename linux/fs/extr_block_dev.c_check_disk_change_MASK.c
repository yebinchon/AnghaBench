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
struct gendisk {struct block_device_operations* fops; } ;
struct block_device_operations {int /*<<< orphan*/  (* revalidate_disk ) (struct gendisk*) ;} ;
struct block_device {struct gendisk* bd_disk; } ;

/* Variables and functions */
 unsigned int DISK_EVENT_EJECT_REQUEST ; 
 unsigned int DISK_EVENT_MEDIA_CHANGE ; 
 unsigned int FUNC0 (struct gendisk*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gendisk*) ; 

int FUNC3(struct block_device *bdev)
{
	struct gendisk *disk = bdev->bd_disk;
	const struct block_device_operations *bdops = disk->fops;
	unsigned int events;

	events = FUNC0(disk, DISK_EVENT_MEDIA_CHANGE |
				   DISK_EVENT_EJECT_REQUEST);
	if (!(events & DISK_EVENT_MEDIA_CHANGE))
		return 0;

	FUNC1(bdev, true);
	if (bdops->revalidate_disk)
		bdops->revalidate_disk(bdev->bd_disk);
	return 1;
}