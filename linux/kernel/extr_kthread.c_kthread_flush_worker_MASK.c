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
struct kthread_worker {int dummy; } ;
struct kthread_flush_work {int /*<<< orphan*/  done; int /*<<< orphan*/  work; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kthread_flush_work_fn ; 
 int /*<<< orphan*/  FUNC2 (struct kthread_worker*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct kthread_worker *worker)
{
	struct kthread_flush_work fwork = {
		FUNC1(fwork.work, kthread_flush_work_fn),
		FUNC0(fwork.done),
	};

	FUNC2(worker, &fwork.work);
	FUNC3(&fwork.done);
}