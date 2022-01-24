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
struct sched_gate_list {int /*<<< orphan*/  cycle_time_extension; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sched_gate_list const*) ; 

__attribute__((used)) static bool FUNC3(const struct sched_gate_list *admin,
				    const struct sched_gate_list *oper,
				    ktime_t close_time)
{
	ktime_t next_base_time, extension_time;

	if (!admin)
		return false;

	next_base_time = FUNC2(admin);

	/* This is the simple case, the close_time would fall after
	 * the next schedule base_time.
	 */
	if (FUNC1(next_base_time, close_time) <= 0)
		return true;

	/* This is the cycle_time_extension case, if the close_time
	 * plus the amount that can be extended would fall after the
	 * next schedule base_time, we can extend the current schedule
	 * for that amount.
	 */
	extension_time = FUNC0(close_time, oper->cycle_time_extension);

	/* FIXME: the IEEE 802.1Q-2018 Specification isn't clear about
	 * how precisely the extension should be made. So after
	 * conformance testing, this logic may change.
	 */
	if (FUNC1(next_base_time, extension_time) <= 0)
		return true;

	return false;
}