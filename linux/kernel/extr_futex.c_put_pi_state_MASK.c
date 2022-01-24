#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct task_struct {int /*<<< orphan*/  pi_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  wait_lock; } ;
struct futex_pi_state {int /*<<< orphan*/  refcount; struct task_struct* owner; TYPE_1__ pi_mutex; int /*<<< orphan*/  list; } ;
struct TYPE_4__ {struct futex_pi_state* pi_state_cache; } ;

/* Variables and functions */
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 (struct futex_pi_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct task_struct*) ; 

__attribute__((used)) static void FUNC9(struct futex_pi_state *pi_state)
{
	if (!pi_state)
		return;

	if (!FUNC6(&pi_state->refcount))
		return;

	/*
	 * If pi_state->owner is NULL, the owner is most probably dying
	 * and has cleaned up the pi_state already
	 */
	if (pi_state->owner) {
		struct task_struct *owner;

		FUNC3(&pi_state->pi_mutex.wait_lock);
		owner = pi_state->owner;
		if (owner) {
			FUNC2(&owner->pi_lock);
			FUNC1(&pi_state->list);
			FUNC4(&owner->pi_lock);
		}
		FUNC8(&pi_state->pi_mutex, owner);
		FUNC5(&pi_state->pi_mutex.wait_lock);
	}

	if (current->pi_state_cache) {
		FUNC0(pi_state);
	} else {
		/*
		 * pi_state->list is already empty.
		 * clear pi_state->owner.
		 * refcount is at 0 - put it back to 1.
		 */
		pi_state->owner = NULL;
		FUNC7(&pi_state->refcount, 1);
		current->pi_state_cache = pi_state;
	}
}