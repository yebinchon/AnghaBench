#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  work; } ;
struct TYPE_5__ {struct task_struct* waiter; } ;
struct iomap_dio {int flags; TYPE_4__ aio; TYPE_2__* iocb; TYPE_1__ submit; scalar_t__ wait_for_completion; int /*<<< orphan*/  ref; } ;
struct inode {TYPE_3__* i_sb; } ;
struct bio {scalar_t__ bi_status; struct iomap_dio* bi_private; } ;
struct TYPE_7__ {int /*<<< orphan*/  s_dio_done_wq; } ;
struct TYPE_6__ {int /*<<< orphan*/  ki_filp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int IOMAP_DIO_DIRTY ; 
 int IOMAP_DIO_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct task_struct*) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iomap_dio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct bio *bio)
{
	struct iomap_dio *dio = bio->bi_private;
	bool should_dirty = (dio->flags & IOMAP_DIO_DIRTY);

	if (bio->bi_status)
		FUNC10(dio, FUNC6(bio->bi_status));

	if (FUNC2(&dio->ref)) {
		if (dio->wait_for_completion) {
			struct task_struct *waiter = dio->submit.waiter;
			FUNC1(dio->submit.waiter, NULL);
			FUNC7(waiter);
		} else if (dio->flags & IOMAP_DIO_WRITE) {
			struct inode *inode = FUNC8(dio->iocb->ki_filp);

			FUNC0(&dio->aio.work, iomap_dio_complete_work);
			FUNC11(inode->i_sb->s_dio_done_wq, &dio->aio.work);
		} else {
			FUNC9(&dio->aio.work);
		}
	}

	if (should_dirty) {
		FUNC3(bio);
	} else {
		FUNC5(bio, false);
		FUNC4(bio);
	}
}