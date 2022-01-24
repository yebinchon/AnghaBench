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
struct TYPE_2__ {int /*<<< orphan*/  (* exp_sync ) () ;int /*<<< orphan*/  (* sync ) () ;int /*<<< orphan*/  (* cb_barrier ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_NICE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* cur_ops ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ gp_exp ; 
 scalar_t__ gp_normal ; 
 int nfakewriters ; 
 int /*<<< orphan*/  rand ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int
FUNC14(void *arg)
{
	FUNC0(rand);

	FUNC1("rcu_torture_fakewriter task started");
	FUNC3(current, MAX_NICE);

	do {
		FUNC2(1 + FUNC12(&rand)%10);
		FUNC13(FUNC12(&rand) & 0x3ff);
		if (cur_ops->cb_barrier != NULL &&
		    FUNC12(&rand) % (nfakewriters * 8) == 0) {
			cur_ops->cb_barrier();
		} else if (gp_normal == gp_exp) {
			if (cur_ops->sync && FUNC12(&rand) & 0x80)
				cur_ops->sync();
			else if (cur_ops->exp_sync)
				cur_ops->exp_sync();
		} else if (gp_normal && cur_ops->sync) {
			cur_ops->sync();
		} else if (cur_ops->exp_sync) {
			cur_ops->exp_sync();
		}
		FUNC9("rcu_torture_fakewriter");
	} while (!FUNC11());

	FUNC10("rcu_torture_fakewriter");
	return 0;
}