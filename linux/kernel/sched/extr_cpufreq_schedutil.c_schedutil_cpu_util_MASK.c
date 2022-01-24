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
struct task_struct {int dummy; } ;
struct rq {int /*<<< orphan*/  rt; } ;
typedef  enum schedutil_type { ____Placeholder_schedutil_type } schedutil_type ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_UCLAMP_TASK ; 
 int ENERGY_UTIL ; 
 int FREQUENCY_UTIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct rq*) ; 
 struct rq* FUNC2 (int) ; 
 unsigned long FUNC3 (struct rq*) ; 
 unsigned long FUNC4 (struct rq*) ; 
 unsigned long FUNC5 (struct rq*) ; 
 unsigned long FUNC6 (unsigned long,unsigned long) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC8 (unsigned long,unsigned long,unsigned long) ; 
 unsigned long FUNC9 (struct rq*,unsigned long,struct task_struct*) ; 
 scalar_t__ FUNC10 (int) ; 

unsigned long FUNC11(int cpu, unsigned long util_cfs,
				 unsigned long max, enum schedutil_type type,
				 struct task_struct *p)
{
	unsigned long dl_util, util, irq;
	struct rq *rq = FUNC2(cpu);

	if (!FUNC0(CONFIG_UCLAMP_TASK) &&
	    type == FREQUENCY_UTIL && FUNC7(&rq->rt)) {
		return max;
	}

	/*
	 * Early check to see if IRQ/steal time saturates the CPU, can be
	 * because of inaccuracies in how we track these -- see
	 * update_irq_load_avg().
	 */
	irq = FUNC4(rq);
	if (FUNC10(irq >= max))
		return max;

	/*
	 * Because the time spend on RT/DL tasks is visible as 'lost' time to
	 * CFS tasks and we use the same metric to track the effective
	 * utilization (PELT windows are synchronized) we can directly add them
	 * to obtain the CPU's actual utilization.
	 *
	 * CFS and RT utilization can be boosted or capped, depending on
	 * utilization clamp constraints requested by currently RUNNABLE
	 * tasks.
	 * When there are no CFS RUNNABLE tasks, clamps are released and
	 * frequency will be gracefully reduced with the utilization decay.
	 */
	util = util_cfs + FUNC5(rq);
	if (type == FREQUENCY_UTIL)
		util = FUNC9(rq, util, p);

	dl_util = FUNC3(rq);

	/*
	 * For frequency selection we do not make cpu_util_dl() a permanent part
	 * of this sum because we want to use cpu_bw_dl() later on, but we need
	 * to check if the CFS+RT+DL sum is saturated (ie. no idle time) such
	 * that we select f_max when there is no idle time.
	 *
	 * NOTE: numerical errors or stop class might cause us to not quite hit
	 * saturation when we should -- something for later.
	 */
	if (util + dl_util >= max)
		return max;

	/*
	 * OTOH, for energy computation we need the estimated running time, so
	 * include util_dl and ignore dl_bw.
	 */
	if (type == ENERGY_UTIL)
		util += dl_util;

	/*
	 * There is still idle time; further improve the number by using the
	 * irq metric. Because IRQ/steal time is hidden from the task clock we
	 * need to scale the task numbers:
	 *
	 *              max - irq
	 *   U' = irq + --------- * U
	 *                 max
	 */
	util = FUNC8(util, irq, max);
	util += irq;

	/*
	 * Bandwidth required by DEADLINE must always be granted while, for
	 * FAIR and RT, we use blocked utilization of IDLE CPUs as a mechanism
	 * to gracefully reduce the frequency when no tasks show up for longer
	 * periods of time.
	 *
	 * Ideally we would like to set bw_dl as min/guaranteed freq and util +
	 * bw_dl as requested freq. However, cpufreq is not yet ready for such
	 * an interface. So, we only do the latter for now.
	 */
	if (type == FREQUENCY_UTIL)
		util += FUNC1(rq);

	return FUNC6(max, util);
}