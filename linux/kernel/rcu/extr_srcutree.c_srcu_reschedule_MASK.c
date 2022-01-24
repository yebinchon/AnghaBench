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
struct srcu_struct {int /*<<< orphan*/  work; int /*<<< orphan*/  srcu_gp_seq; int /*<<< orphan*/  srcu_gp_seq_needed; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  rcu_gp_wq ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct srcu_struct*) ; 
 int /*<<< orphan*/  FUNC6 (struct srcu_struct*) ; 

__attribute__((used)) static void FUNC7(struct srcu_struct *ssp, unsigned long delay)
{
	bool pushgp = true;

	FUNC4(ssp);
	if (FUNC0(ssp->srcu_gp_seq, ssp->srcu_gp_seq_needed)) {
		if (!FUNC1(FUNC3(ssp->srcu_gp_seq))) {
			/* All requests fulfilled, time to go idle. */
			pushgp = false;
		}
	} else if (!FUNC3(ssp->srcu_gp_seq)) {
		/* Outstanding request and no GP.  Start one. */
		FUNC6(ssp);
	}
	FUNC5(ssp);

	if (pushgp)
		FUNC2(rcu_gp_wq, &ssp->work, delay);
}