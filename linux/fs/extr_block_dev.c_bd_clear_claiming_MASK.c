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
struct block_device {void* bd_claiming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct block_device *whole, void *holder)
{
	FUNC1(&bdev_lock);
	/* tell others that we're done */
	FUNC0(whole->bd_claiming != holder);
	whole->bd_claiming = NULL;
	FUNC2(&whole->bd_claiming, 0);
}