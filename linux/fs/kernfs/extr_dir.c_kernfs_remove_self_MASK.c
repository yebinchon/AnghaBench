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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct kernfs_node {int flags; int /*<<< orphan*/  rb; int /*<<< orphan*/  active; } ;
struct TYPE_2__ {int /*<<< orphan*/  deactivate_waitq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KERNFS_SUICIDAL ; 
 int KERNFS_SUICIDED ; 
 scalar_t__ KN_DEACTIVATED_BIAS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kernfs_node*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 
 int /*<<< orphan*/  kernfs_mutex ; 
 TYPE_1__* FUNC7 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct kernfs_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  wait ; 

bool FUNC13(struct kernfs_node *kn)
{
	bool ret;

	FUNC9(&kernfs_mutex);
	FUNC6(kn);

	/*
	 * SUICIDAL is used to arbitrate among competing invocations.  Only
	 * the first one will actually perform removal.  When the removal
	 * is complete, SUICIDED is set and the active ref is restored
	 * while holding kernfs_mutex.  The ones which lost arbitration
	 * waits for SUICDED && drained which can happen only after the
	 * enclosing kernfs operation which executed the winning instance
	 * of kernfs_remove_self() finished.
	 */
	if (!(kn->flags & KERNFS_SUICIDAL)) {
		kn->flags |= KERNFS_SUICIDAL;
		FUNC3(kn);
		kn->flags |= KERNFS_SUICIDED;
		ret = true;
	} else {
		wait_queue_head_t *waitq = &FUNC7(kn)->deactivate_waitq;
		FUNC0(wait);

		while (true) {
			FUNC11(waitq, &wait, TASK_UNINTERRUPTIBLE);

			if ((kn->flags & KERNFS_SUICIDED) &&
			    FUNC4(&kn->active) == KN_DEACTIVATED_BIAS)
				break;

			FUNC10(&kernfs_mutex);
			FUNC12();
			FUNC9(&kernfs_mutex);
		}
		FUNC5(waitq, &wait);
		FUNC2(!FUNC1(&kn->rb));
		ret = false;
	}

	/*
	 * This must be done while holding kernfs_mutex; otherwise, waiting
	 * for SUICIDED && deactivated could finish prematurely.
	 */
	FUNC8(kn);

	FUNC10(&kernfs_mutex);
	return ret;
}