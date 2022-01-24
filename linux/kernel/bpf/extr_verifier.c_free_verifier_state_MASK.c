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
struct bpf_verifier_state {int curframe; int /*<<< orphan*/ ** frame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_verifier_state*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_verifier_state*) ; 

__attribute__((used)) static void FUNC3(struct bpf_verifier_state *state,
				bool free_self)
{
	int i;

	for (i = 0; i <= state->curframe; i++) {
		FUNC1(state->frame[i]);
		state->frame[i] = NULL;
	}
	FUNC0(state);
	if (free_self)
		FUNC2(state);
}