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
struct fuse_req {int /*<<< orphan*/  intr_entry; int /*<<< orphan*/  flags; } ;
struct fuse_iqueue {int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  interrupts; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* wake_interrupt_and_unlock ) (struct fuse_iqueue*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FR_FINISHED ; 
 int /*<<< orphan*/  FR_INTERRUPTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_iqueue*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct fuse_iqueue *fiq, struct fuse_req *req)
{
	FUNC4(&fiq->lock);
	/* Check for we've sent request to interrupt this req */
	if (FUNC8(!FUNC7(FR_INTERRUPTED, &req->flags))) {
		FUNC5(&fiq->lock);
		return -EINVAL;
	}

	if (FUNC2(&req->intr_entry)) {
		FUNC0(&req->intr_entry, &fiq->interrupts);
		/*
		 * Pairs with smp_mb() implied by test_and_set_bit()
		 * from request_end().
		 */
		FUNC3();
		if (FUNC7(FR_FINISHED, &req->flags)) {
			FUNC1(&req->intr_entry);
			FUNC5(&fiq->lock);
			return 0;
		}
		fiq->ops->wake_interrupt_and_unlock(fiq);
	} else {
		FUNC5(&fiq->lock);
	}
	return 0;
}