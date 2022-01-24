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
struct io_submit_state {size_t cur_req; int /*<<< orphan*/ * reqs; scalar_t__ free_reqs; int /*<<< orphan*/  plug; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct io_submit_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  req_cachep ; 

__attribute__((used)) static void FUNC3(struct io_submit_state *state)
{
	FUNC0(&state->plug);
	FUNC1(state);
	if (state->free_reqs)
		FUNC2(req_cachep, state->free_reqs,
					&state->reqs[state->cur_req]);
}