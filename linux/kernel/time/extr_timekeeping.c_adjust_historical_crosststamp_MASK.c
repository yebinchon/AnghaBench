#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_5__ {int /*<<< orphan*/  mult; } ;
struct TYPE_4__ {int /*<<< orphan*/  mult; } ;
struct timekeeper {TYPE_2__ tkr_raw; TYPE_1__ tkr_mono; } ;
struct system_time_snapshot {int /*<<< orphan*/  real; int /*<<< orphan*/  raw; } ;
struct system_device_crosststamp {void* sys_realtime; void* sys_monoraw; } ;
struct TYPE_6__ {struct timekeeper timekeeper; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,scalar_t__,scalar_t__*) ; 
 TYPE_3__ tk_core ; 

__attribute__((used)) static int FUNC6(struct system_time_snapshot *history,
					 u64 partial_history_cycles,
					 u64 total_history_cycles,
					 bool discontinuity,
					 struct system_device_crosststamp *ts)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	u64 corr_raw, corr_real;
	bool interp_forward;
	int ret;

	if (total_history_cycles == 0 || partial_history_cycles == 0)
		return 0;

	/* Interpolate shortest distance from beginning or end of history */
	interp_forward = partial_history_cycles > total_history_cycles / 2;
	partial_history_cycles = interp_forward ?
		total_history_cycles - partial_history_cycles :
		partial_history_cycles;

	/*
	 * Scale the monotonic raw time delta by:
	 *	partial_history_cycles / total_history_cycles
	 */
	corr_raw = (u64)FUNC3(
		FUNC1(ts->sys_monoraw, history->raw));
	ret = FUNC5(partial_history_cycles,
				     total_history_cycles, &corr_raw);
	if (ret)
		return ret;

	/*
	 * If there is a discontinuity in the history, scale monotonic raw
	 *	correction by:
	 *	mult(real)/mult(raw) yielding the realtime correction
	 * Otherwise, calculate the realtime correction similar to monotonic
	 *	raw calculation
	 */
	if (discontinuity) {
		corr_real = FUNC4
			(corr_raw, tk->tkr_mono.mult, tk->tkr_raw.mult);
	} else {
		corr_real = (u64)FUNC3(
			FUNC1(ts->sys_realtime, history->real));
		ret = FUNC5(partial_history_cycles,
					     total_history_cycles, &corr_real);
		if (ret)
			return ret;
	}

	/* Fixup monotonic raw and real time time values */
	if (interp_forward) {
		ts->sys_monoraw = FUNC0(history->raw, corr_raw);
		ts->sys_realtime = FUNC0(history->real, corr_real);
	} else {
		ts->sys_monoraw = FUNC2(ts->sys_monoraw, corr_raw);
		ts->sys_realtime = FUNC2(ts->sys_realtime, corr_real);
	}

	return 0;
}