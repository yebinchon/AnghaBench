#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ wait_queue_head_t ;
struct TYPE_8__ {int /*<<< orphan*/  entry; } ;
typedef  TYPE_2__ wait_queue_entry_t ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(wait_queue_head_t *wq, wait_queue_entry_t *wait)
{
	if (FUNC1(FUNC2(&wait->entry)))
		FUNC0(wq, wait);

	FUNC4(TASK_INTERRUPTIBLE);
	if (FUNC5(current))
		return -ERESTARTSYS;

	FUNC7(&wq->lock);
	FUNC3();
	FUNC6(&wq->lock);

	return 0;
}