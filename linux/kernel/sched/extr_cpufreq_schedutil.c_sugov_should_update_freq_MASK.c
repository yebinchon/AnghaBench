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
typedef  scalar_t__ u64 ;
struct sugov_policy {int limits_changed; int need_freq_update; scalar_t__ last_freq_update_time; scalar_t__ freq_update_delay_ns; TYPE_1__* policy; } ;
typedef  scalar_t__ s64 ;
struct TYPE_2__ {scalar_t__ fast_switch_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static bool FUNC2(struct sugov_policy *sg_policy, u64 time)
{
	s64 delta_ns;

	/*
	 * Since cpufreq_update_util() is called with rq->lock held for
	 * the @target_cpu, our per-CPU data is fully serialized.
	 *
	 * However, drivers cannot in general deal with cross-CPU
	 * requests, so while get_next_freq() will work, our
	 * sugov_update_commit() call may not for the fast switching platforms.
	 *
	 * Hence stop here for remote requests if they aren't supported
	 * by the hardware, as calculating the frequency is pointless if
	 * we cannot in fact act on it.
	 *
	 * For the slow switching platforms, the kthread is always scheduled on
	 * the right set of CPUs and any CPU can find the next frequency and
	 * schedule the kthread.
	 */
	if (sg_policy->policy->fast_switch_enabled &&
	    !FUNC0(sg_policy->policy))
		return false;

	if (FUNC1(sg_policy->limits_changed)) {
		sg_policy->limits_changed = false;
		sg_policy->need_freq_update = true;
		return true;
	}

	delta_ns = time - sg_policy->last_freq_update_time;

	return delta_ns >= sg_policy->freq_update_delay_ns;
}