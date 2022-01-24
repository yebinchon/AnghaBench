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
struct cpuset {int /*<<< orphan*/  cpus_allowed; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  cpuset_flagbits_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct cpuset* FUNC0 (struct cpuset*) ; 
 int /*<<< orphan*/  callback_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cpuset*) ; 
 scalar_t__ FUNC4 (struct cpuset*) ; 
 scalar_t__ FUNC5 (struct cpuset*) ; 
 scalar_t__ FUNC6 (struct cpuset*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cpuset*) ; 
 int FUNC12 (struct cpuset*,struct cpuset*) ; 

__attribute__((used)) static int FUNC13(cpuset_flagbits_t bit, struct cpuset *cs,
		       int turning_on)
{
	struct cpuset *trialcs;
	int balance_flag_changed;
	int spread_flag_changed;
	int err;

	trialcs = FUNC0(cs);
	if (!trialcs)
		return -ENOMEM;

	if (turning_on)
		FUNC8(bit, &trialcs->flags);
	else
		FUNC1(bit, &trialcs->flags);

	err = FUNC12(cs, trialcs);
	if (err < 0)
		goto out;

	balance_flag_changed = (FUNC4(cs) !=
				FUNC4(trialcs));

	spread_flag_changed = ((FUNC6(cs) != FUNC6(trialcs))
			|| (FUNC5(cs) != FUNC5(trialcs)));

	FUNC9(&callback_lock);
	cs->flags = trialcs->flags;
	FUNC10(&callback_lock);

	if (!FUNC2(trialcs->cpus_allowed) && balance_flag_changed)
		FUNC7();

	if (spread_flag_changed)
		FUNC11(cs);
out:
	FUNC3(trialcs);
	return err;
}