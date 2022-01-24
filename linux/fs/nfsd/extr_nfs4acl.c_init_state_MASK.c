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
struct posix_user_ace_state {int dummy; } ;
struct posix_acl_state {int empty; void* users; void* groups; } ;
struct posix_ace_state_array {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct posix_acl_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(struct posix_acl_state *state, int cnt)
{
	int alloc;

	FUNC2(state, 0, sizeof(struct posix_acl_state));
	state->empty = 1;
	/*
	 * In the worst case, each individual acl could be for a distinct
	 * named user or group, but we don't know which, so we allocate
	 * enough space for either:
	 */
	alloc = sizeof(struct posix_ace_state_array)
		+ cnt*sizeof(struct posix_user_ace_state);
	state->users = FUNC1(alloc, GFP_KERNEL);
	if (!state->users)
		return -ENOMEM;
	state->groups = FUNC1(alloc, GFP_KERNEL);
	if (!state->groups) {
		FUNC0(state->users);
		return -ENOMEM;
	}
	return 0;
}