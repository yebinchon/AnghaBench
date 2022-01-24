#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct inode {int /*<<< orphan*/  i_dio_count; int /*<<< orphan*/  i_state; } ;
struct TYPE_3__ {int /*<<< orphan*/  wq_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  __I_DIO_WAKEUP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ q ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct inode *inode)
{
	wait_queue_head_t *wq = FUNC2(&inode->i_state, __I_DIO_WAKEUP);
	FUNC0(q, &inode->i_state, __I_DIO_WAKEUP);

	do {
		FUNC4(wq, &q.wq_entry, TASK_UNINTERRUPTIBLE);
		if (FUNC1(&inode->i_dio_count))
			FUNC5();
	} while (FUNC1(&inode->i_dio_count));
	FUNC3(wq, &q.wq_entry);
}