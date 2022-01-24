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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct block_device {scalar_t__ bd_claiming; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct block_device*,struct block_device*,void*) ; 
 int /*<<< orphan*/  bdev_lock ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC8(struct block_device *bdev,
			       struct block_device *whole, void *holder)
{
retry:
	/* if someone else claimed, fail */
	if (!FUNC1(bdev, whole, holder))
		return -EBUSY;

	/* if claiming is already in progress, wait for it to finish */
	if (whole->bd_claiming) {
		wait_queue_head_t *wq = FUNC2(&whole->bd_claiming, 0);
		FUNC0(wait);

		FUNC4(wq, &wait, TASK_UNINTERRUPTIBLE);
		FUNC7(&bdev_lock);
		FUNC5();
		FUNC3(wq, &wait);
		FUNC6(&bdev_lock);
		goto retry;
	}

	/* yay, all mine */
	return 0;
}