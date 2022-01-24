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
struct virtio_fs_vq {scalar_t__ in_flight; int /*<<< orphan*/  dispatch_work; int /*<<< orphan*/  done_work; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct virtio_fs_vq *fsvq)
{
	FUNC0(fsvq->in_flight < 0);

	/* Wait for in flight requests to finish.*/
	while (1) {
		FUNC3(&fsvq->lock);
		if (!fsvq->in_flight) {
			FUNC4(&fsvq->lock);
			break;
		}
		FUNC4(&fsvq->lock);
		/* TODO use completion instead of timeout */
		FUNC5(1000, 2000);
	}

	FUNC2(&fsvq->done_work);
	FUNC1(&fsvq->dispatch_work);
}