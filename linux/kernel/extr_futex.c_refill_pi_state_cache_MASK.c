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
struct futex_pi_state {int /*<<< orphan*/  key; int /*<<< orphan*/  refcount; int /*<<< orphan*/ * owner; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {struct futex_pi_state* pi_state_cache; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUTEX_KEY_INIT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 struct futex_pi_state* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct futex_pi_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC4(void)
{
	struct futex_pi_state *pi_state;

	if (FUNC2(current->pi_state_cache))
		return 0;

	pi_state = FUNC1(sizeof(*pi_state), GFP_KERNEL);

	if (!pi_state)
		return -ENOMEM;

	FUNC0(&pi_state->list);
	/* pi_mutex gets initialized later */
	pi_state->owner = NULL;
	FUNC3(&pi_state->refcount, 1);
	pi_state->key = FUTEX_KEY_INIT;

	current->pi_state_cache = pi_state;

	return 0;
}