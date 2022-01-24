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
struct nd_cmd_ars_status {int out_length; int /*<<< orphan*/  status; } ;
struct ars_state {int /*<<< orphan*/  lock; TYPE_1__* ars_status; int /*<<< orphan*/  deadline; } ;
struct TYPE_2__ {unsigned int out_length; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  NFIT_ARS_STATUS_BUSY ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct nd_cmd_ars_status*,TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nd_cmd_ars_status*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ars_state *ars_state,
		struct nd_cmd_ars_status *ars_status, unsigned int buf_len,
		int *cmd_rc)
{
	if (buf_len < ars_state->ars_status->out_length)
		return -EINVAL;

	FUNC2(&ars_state->lock);
	if (FUNC4(jiffies, ars_state->deadline)) {
		FUNC1(ars_status, 0, buf_len);
		ars_status->status = NFIT_ARS_STATUS_BUSY;
		ars_status->out_length = sizeof(*ars_status);
		*cmd_rc = -EBUSY;
	} else {
		FUNC0(ars_status, ars_state->ars_status,
				ars_state->ars_status->out_length);
		*cmd_rc = 0;
	}
	FUNC3(&ars_state->lock);
	return 0;
}