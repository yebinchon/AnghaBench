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
struct selinux_state {TYPE_1__* ss; } ;
struct selinux_kernel_status {int policyload; int deny_unknown; int /*<<< orphan*/  sequence; } ;
struct TYPE_2__ {int /*<<< orphan*/  status_lock; scalar_t__ status_page; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct selinux_kernel_status* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct selinux_state*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct selinux_state *state,
				      int seqno)
{
	struct selinux_kernel_status   *status;

	FUNC0(&state->ss->status_lock);
	if (state->ss->status_page) {
		status = FUNC2(state->ss->status_page);

		status->sequence++;
		FUNC4();

		status->policyload = seqno;
		status->deny_unknown = !FUNC3(state);

		FUNC4();
		status->sequence++;
	}
	FUNC1(&state->ss->status_lock);
}