#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dio {unsigned long refcount; scalar_t__ op; int /*<<< orphan*/  complete_work; TYPE_3__* inode; scalar_t__ defer_completion; scalar_t__ result; int /*<<< orphan*/  bio_lock; scalar_t__ waiter; } ;
struct bio {struct dio* bi_private; } ;
struct TYPE_6__ {TYPE_2__* i_sb; TYPE_1__* i_mapping; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_dio_done_wq; } ;
struct TYPE_4__ {scalar_t__ nrpages; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIO_COMPLETE_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  dio_aio_complete_work ; 
 int /*<<< orphan*/  FUNC1 (struct dio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct dio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(struct bio *bio)
{
	struct dio *dio = bio->bi_private;
	unsigned long remaining;
	unsigned long flags;
	bool defer_completion = false;

	/* cleanup the bio */
	FUNC1(dio, bio);

	FUNC4(&dio->bio_lock, flags);
	remaining = --dio->refcount;
	if (remaining == 1 && dio->waiter)
		FUNC6(dio->waiter);
	FUNC5(&dio->bio_lock, flags);

	if (remaining == 0) {
		/*
		 * Defer completion when defer_completion is set or
		 * when the inode has pages mapped and this is AIO write.
		 * We need to invalidate those pages because there is a
		 * chance they contain stale data in the case buffered IO
		 * went in between AIO submission and completion into the
		 * same region.
		 */
		if (dio->result)
			defer_completion = dio->defer_completion ||
					   (dio->op == REQ_OP_WRITE &&
					    dio->inode->i_mapping->nrpages);
		if (defer_completion) {
			FUNC0(&dio->complete_work, dio_aio_complete_work);
			FUNC3(dio->inode->i_sb->s_dio_done_wq,
				   &dio->complete_work);
		} else {
			FUNC2(dio, 0, DIO_COMPLETE_ASYNC);
		}
	}
}