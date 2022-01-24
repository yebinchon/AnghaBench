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
struct xfrm_pol_inexact_bin {int /*<<< orphan*/  inexact_bins; int /*<<< orphan*/  head; int /*<<< orphan*/  hhead; int /*<<< orphan*/  root_s; int /*<<< orphan*/  root_d; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfrm_pol_inexact_bin*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfrm_pol_inexact_params ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  xfrm_policy_inexact_table ; 

__attribute__((used)) static void FUNC9(struct xfrm_pol_inexact_bin *b, bool net_exit)
{
	FUNC6(&b->count);
	FUNC8(&b->root_d, net_exit);
	FUNC8(&b->root_s, net_exit);
	FUNC7(&b->count);

	if (!FUNC0(&b->root_d) || !FUNC0(&b->root_s) ||
	    !FUNC2(&b->hhead)) {
		FUNC1(net_exit);
		return;
	}

	if (FUNC5(&xfrm_policy_inexact_table, &b->head,
				   xfrm_pol_inexact_params) == 0) {
		FUNC4(&b->inexact_bins);
		FUNC3(b, rcu);
	}
}