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
struct nfit_test {int /*<<< orphan*/  badrange; } ;
struct nd_cmd_ars_start {int scrub_time; int /*<<< orphan*/  length; int /*<<< orphan*/  address; scalar_t__ status; } ;
struct ars_state {int /*<<< orphan*/  lock; int /*<<< orphan*/  deadline; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ NFIT_ARS_START_BUSY ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct ars_state*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct nfit_test *t,
		struct ars_state *ars_state,
		struct nd_cmd_ars_start *ars_start, unsigned int buf_len,
		int *cmd_rc)
{
	if (buf_len < sizeof(*ars_start))
		return -EINVAL;

	FUNC1(&ars_state->lock);
	if (FUNC3(jiffies, ars_state->deadline)) {
		ars_start->status = NFIT_ARS_START_BUSY;
		*cmd_rc = -EBUSY;
	} else {
		ars_start->status = 0;
		ars_start->scrub_time = 1;
		FUNC0(ars_state, &t->badrange, ars_start->address,
				ars_start->length);
		*cmd_rc = 0;
	}
	FUNC2(&ars_state->lock);

	return 0;
}