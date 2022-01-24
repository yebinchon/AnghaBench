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
struct task_struct {struct sighand_struct* sighand; } ;
struct sighand_struct {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 struct sighand_struct* FUNC1 (struct sighand_struct*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

struct sighand_struct *FUNC7(struct task_struct *tsk,
					   unsigned long *flags)
{
	struct sighand_struct *sighand;

	FUNC2();
	for (;;) {
		sighand = FUNC1(tsk->sighand);
		if (FUNC6(sighand == NULL))
			break;

		/*
		 * This sighand can be already freed and even reused, but
		 * we rely on SLAB_TYPESAFE_BY_RCU and sighand_ctor() which
		 * initializes ->siglock: this slab can't go away, it has
		 * the same object type, ->siglock can't be reinitialized.
		 *
		 * We need to ensure that tsk->sighand is still the same
		 * after we take the lock, we can race with de_thread() or
		 * __exit_signal(). In the latter case the next iteration
		 * must see ->sighand == NULL.
		 */
		FUNC4(&sighand->siglock, *flags);
		if (FUNC0(sighand == tsk->sighand))
			break;
		FUNC5(&sighand->siglock, *flags);
	}
	FUNC3();

	return sighand;
}