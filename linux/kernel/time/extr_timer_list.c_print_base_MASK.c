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
typedef  scalar_t__ u64 ;
struct seq_file {int dummy; } ;
struct hrtimer_clock_base {int /*<<< orphan*/  offset; int /*<<< orphan*/  get_time; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  hrtimer_resolution ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,struct hrtimer_clock_base*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct seq_file *m, struct hrtimer_clock_base *base, u64 now)
{
	FUNC0(m, "  .base:       %pK\n", base);
	FUNC0(m, "  .index:      %d\n", base->index);

	FUNC0(m, "  .resolution: %u nsecs\n", hrtimer_resolution);

	FUNC0(m,   "  .get_time:   ");
	FUNC3(m, base->get_time);
	FUNC0(m,   "\n");
#ifdef CONFIG_HIGH_RES_TIMERS
	SEQ_printf(m, "  .offset:     %Lu nsecs\n",
		   (unsigned long long) ktime_to_ns(base->offset));
#endif
	FUNC0(m,   "active timers:\n");
	FUNC2(m, base, now + FUNC1(base->offset));
}