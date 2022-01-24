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
struct nfs4_state {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 int /*<<< orphan*/  LK_STATE_IN_USE ; 
 scalar_t__ FUNC0 (struct nfs4_state*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct nfs4_state *state,
		const nfs4_stateid *stateid)
{
	bool found = false;

	if (FUNC3(LK_STATE_IN_USE, &state->flags)) {
		FUNC1(&state->state_lock);
		if (FUNC0(state, stateid))
			found = true;
		FUNC2(&state->state_lock);
	}
	return found;
}