#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct xa_state {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  func; } ;
struct wait_exceptional_entry_queue {TYPE_1__ wait; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/ * FUNC0 (struct xa_state*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  wake_exceptional_entry_func ; 
 int /*<<< orphan*/  FUNC5 (struct xa_state*) ; 

__attribute__((used)) static void FUNC6(struct xa_state *xas, void *entry)
{
	struct wait_exceptional_entry_queue ewait;
	wait_queue_head_t *wq;

	FUNC2(&ewait.wait);
	ewait.wait.func = wake_exceptional_entry_func;

	wq = FUNC0(xas, entry, &ewait.key);
	/*
	 * Unlike get_unlocked_entry() there is no guarantee that this
	 * path ever successfully retrieves an unlocked entry before an
	 * inode dies. Perform a non-exclusive wait in case this path
	 * never successfully performs its own wake up.
	 */
	FUNC3(wq, &ewait.wait, TASK_UNINTERRUPTIBLE);
	FUNC5(xas);
	FUNC4();
	FUNC1(wq, &ewait.wait);
}