#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct sugov_tunables {TYPE_2__ attr_set; int /*<<< orphan*/  rate_limit_us; } ;
struct sugov_policy {struct sugov_tunables* tunables; int /*<<< orphan*/  tunables_hook; } ;
struct cpufreq_policy {struct sugov_policy* governor_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC2 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC3 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC4 (struct cpufreq_policy*) ; 
 struct sugov_tunables* global_tunables ; 
 int /*<<< orphan*/  global_tunables_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 TYPE_1__ schedutil_gov ; 
 int FUNC12 (struct sugov_policy*) ; 
 int /*<<< orphan*/  FUNC13 (struct sugov_policy*) ; 
 struct sugov_policy* FUNC14 (struct cpufreq_policy*) ; 
 int /*<<< orphan*/  FUNC15 (struct sugov_policy*) ; 
 struct sugov_tunables* FUNC16 (struct sugov_policy*) ; 
 int /*<<< orphan*/  FUNC17 (struct sugov_tunables*) ; 
 int /*<<< orphan*/  sugov_tunables_ktype ; 

__attribute__((used)) static int FUNC18(struct cpufreq_policy *policy)
{
	struct sugov_policy *sg_policy;
	struct sugov_tunables *tunables;
	int ret = 0;

	/* State should be equivalent to EXIT */
	if (policy->governor_data)
		return -EBUSY;

	FUNC2(policy);

	sg_policy = FUNC14(policy);
	if (!sg_policy) {
		ret = -ENOMEM;
		goto disable_fast_switch;
	}

	ret = FUNC12(sg_policy);
	if (ret)
		goto free_sg_policy;

	FUNC9(&global_tunables_lock);

	if (global_tunables) {
		if (FUNC0(FUNC6())) {
			ret = -EINVAL;
			goto stop_kthread;
		}
		policy->governor_data = sg_policy;
		sg_policy->tunables = global_tunables;

		FUNC5(&global_tunables->attr_set, &sg_policy->tunables_hook);
		goto out;
	}

	tunables = FUNC16(sg_policy);
	if (!tunables) {
		ret = -ENOMEM;
		goto stop_kthread;
	}

	tunables->rate_limit_us = FUNC3(policy);

	policy->governor_data = sg_policy;
	sg_policy->tunables = tunables;

	ret = FUNC7(&tunables->attr_set.kobj, &sugov_tunables_ktype,
				   FUNC4(policy), "%s",
				   schedutil_gov.name);
	if (ret)
		goto fail;

out:
	FUNC10(&global_tunables_lock);
	return 0;

fail:
	FUNC8(&tunables->attr_set.kobj);
	policy->governor_data = NULL;
	FUNC17(tunables);

stop_kthread:
	FUNC13(sg_policy);
	FUNC10(&global_tunables_lock);

free_sg_policy:
	FUNC15(sg_policy);

disable_fast_switch:
	FUNC1(policy);

	FUNC11("initialization failed (error %d)\n", ret);
	return ret;
}