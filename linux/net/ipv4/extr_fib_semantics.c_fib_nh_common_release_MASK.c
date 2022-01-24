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
struct fib_nh_common {int /*<<< orphan*/  nhc_rth_input; int /*<<< orphan*/  nhc_pcpu_rth_output; int /*<<< orphan*/  nhc_lwtstate; scalar_t__ nhc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fib_nh_common*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct fib_nh_common *nhc)
{
	if (nhc->nhc_dev)
		FUNC0(nhc->nhc_dev);

	FUNC2(nhc->nhc_lwtstate);
	FUNC4(nhc->nhc_pcpu_rth_output);
	FUNC3(&nhc->nhc_rth_input);
	FUNC1(nhc);
}