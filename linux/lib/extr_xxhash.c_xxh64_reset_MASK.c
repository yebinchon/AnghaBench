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
typedef  scalar_t__ uint64_t ;
struct xxh64_state {scalar_t__ v4; scalar_t__ v3; scalar_t__ v2; scalar_t__ v1; } ;
typedef  int /*<<< orphan*/  state ;

/* Variables and functions */
 scalar_t__ const PRIME64_1 ; 
 scalar_t__ const PRIME64_2 ; 
 int /*<<< orphan*/  FUNC0 (struct xxh64_state*,struct xxh64_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct xxh64_state*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct xxh64_state *statePtr, const uint64_t seed)
{
	/* use a local state for memcpy() to avoid strict-aliasing warnings */
	struct xxh64_state state;

	FUNC1(&state, 0, sizeof(state));
	state.v1 = seed + PRIME64_1 + PRIME64_2;
	state.v2 = seed + PRIME64_2;
	state.v3 = seed + 0;
	state.v4 = seed - PRIME64_1;
	FUNC0(statePtr, &state, sizeof(state));
}