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
struct io_submit_state {unsigned int ios_left; int /*<<< orphan*/ * file; scalar_t__ free_reqs; int /*<<< orphan*/  plug; } ;
struct io_ring_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct io_submit_state *state,
				  struct io_ring_ctx *ctx, unsigned max_ios)
{
	FUNC0(&state->plug);
	state->free_reqs = 0;
	state->file = NULL;
	state->ios_left = max_ios;
}