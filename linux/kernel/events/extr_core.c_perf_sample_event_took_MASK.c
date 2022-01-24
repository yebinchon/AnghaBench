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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int HZ ; 
 int NR_ACCUMULATED_SAMPLES ; 
 int NSEC_PER_SEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TICK_NSEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int __report_allowed ; 
 int __report_avg ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  max_samples_per_tick ; 
 int /*<<< orphan*/  perf_duration_work ; 
 int /*<<< orphan*/  perf_sample_allowed_ns ; 
 int perf_sample_period_ns ; 
 int /*<<< orphan*/  running_sample_length ; 
 int sysctl_perf_cpu_time_max_percent ; 
 int sysctl_perf_event_sample_rate ; 

void FUNC6(u64 sample_len_ns)
{
	u64 max_len = FUNC0(perf_sample_allowed_ns);
	u64 running_len;
	u64 avg_len;
	u32 max;

	if (max_len == 0)
		return;

	/* Decay the counter by 1 average sample. */
	running_len = FUNC2(running_sample_length);
	running_len -= running_len/NR_ACCUMULATED_SAMPLES;
	running_len += sample_len_ns;
	FUNC3(running_sample_length, running_len);

	/*
	 * Note: this will be biased artifically low until we have
	 * seen NR_ACCUMULATED_SAMPLES. Doing it this way keeps us
	 * from having to maintain a count.
	 */
	avg_len = running_len/NR_ACCUMULATED_SAMPLES;
	if (avg_len <= max_len)
		return;

	__report_avg = avg_len;
	__report_allowed = max_len;

	/*
	 * Compute a throttle threshold 25% below the current duration.
	 */
	avg_len += avg_len / 4;
	max = (TICK_NSEC / 100) * sysctl_perf_cpu_time_max_percent;
	if (avg_len < max)
		max /= (u32)avg_len;
	else
		max = 1;

	FUNC1(perf_sample_allowed_ns, avg_len);
	FUNC1(max_samples_per_tick, max);

	sysctl_perf_event_sample_rate = max * HZ;
	perf_sample_period_ns = NSEC_PER_SEC / sysctl_perf_event_sample_rate;

	if (!FUNC5(&perf_duration_work)) {
		FUNC4("perf: interrupt took too long (%lld > %lld), lowering "
			     "kernel.perf_event_max_sample_rate to %d\n",
			     __report_avg, __report_allowed,
			     sysctl_perf_event_sample_rate);
	}
}