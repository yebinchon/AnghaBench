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
struct task_struct {int dummy; } ;
struct kiocb {int /*<<< orphan*/  (* ki_complete ) (struct kiocb*,scalar_t__,int /*<<< orphan*/ ) ;int /*<<< orphan*/  ki_pos; } ;
struct bio {scalar_t__ bi_status; struct blkdev_dio* bi_private; } ;
struct blkdev_dio {int should_dirty; struct task_struct* waiter; struct bio bio; scalar_t__ multi_bio; struct kiocb* iocb; scalar_t__ size; int /*<<< orphan*/  is_sync; int /*<<< orphan*/  ref; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct kiocb*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct bio *bio)
{
	struct blkdev_dio *dio = bio->bi_private;
	bool should_dirty = dio->should_dirty;

	if (bio->bi_status && !dio->bio.bi_status)
		dio->bio.bi_status = bio->bi_status;

	if (!dio->multi_bio || FUNC1(&dio->ref)) {
		if (!dio->is_sync) {
			struct kiocb *iocb = dio->iocb;
			ssize_t ret;

			if (FUNC7(!dio->bio.bi_status)) {
				ret = dio->size;
				iocb->ki_pos += ret;
			} else {
				ret = FUNC5(dio->bio.bi_status);
			}

			dio->iocb->ki_complete(iocb, ret, 0);
			if (dio->multi_bio)
				FUNC3(&dio->bio);
		} else {
			struct task_struct *waiter = dio->waiter;

			FUNC0(dio->waiter, NULL);
			FUNC6(waiter);
		}
	}

	if (should_dirty) {
		FUNC2(bio);
	} else {
		FUNC4(bio, false);
		FUNC3(bio);
	}
}