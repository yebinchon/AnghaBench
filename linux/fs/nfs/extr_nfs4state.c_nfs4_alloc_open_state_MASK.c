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
struct nfs4_state {int /*<<< orphan*/  waitq; int /*<<< orphan*/  seqlock; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  lock_states; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nfs4_state* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct nfs4_state *
FUNC6(void)
{
	struct nfs4_state *state;

	state = FUNC2(sizeof(*state), GFP_NOFS);
	if (!state)
		return NULL;
	FUNC3(&state->count, 1);
	FUNC0(&state->lock_states);
	FUNC5(&state->state_lock);
	FUNC4(&state->seqlock);
	FUNC1(&state->waitq);
	return state;
}