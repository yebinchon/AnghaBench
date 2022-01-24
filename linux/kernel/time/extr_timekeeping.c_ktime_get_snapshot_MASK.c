#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_5__ {int /*<<< orphan*/  base; } ;
struct timekeeper {TYPE_2__ tkr_raw; TYPE_2__ tkr_mono; int /*<<< orphan*/  offs_real; int /*<<< orphan*/  clock_was_set_seq; int /*<<< orphan*/  cs_was_changed_seq; } ;
struct system_time_snapshot {void* raw; void* real; int /*<<< orphan*/  cycles; int /*<<< orphan*/  clock_was_set_seq; int /*<<< orphan*/  cs_was_changed_seq; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_4__ {struct timekeeper timekeeper; int /*<<< orphan*/  seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timekeeping_suspended ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_1__ tk_core ; 

void FUNC7(struct system_time_snapshot *systime_snapshot)
{
	struct timekeeper *tk = &tk_core.timekeeper;
	unsigned int seq;
	ktime_t base_raw;
	ktime_t base_real;
	u64 nsec_raw;
	u64 nsec_real;
	u64 now;

	FUNC0(timekeeping_suspended);

	do {
		seq = FUNC3(&tk_core.seq);
		now = FUNC6(&tk->tkr_mono);
		systime_snapshot->cs_was_changed_seq = tk->cs_was_changed_seq;
		systime_snapshot->clock_was_set_seq = tk->clock_was_set_seq;
		base_real = FUNC1(tk->tkr_mono.base,
				      tk_core.timekeeper.offs_real);
		base_raw = tk->tkr_raw.base;
		nsec_real = FUNC5(&tk->tkr_mono, now);
		nsec_raw  = FUNC5(&tk->tkr_raw, now);
	} while (FUNC4(&tk_core.seq, seq));

	systime_snapshot->cycles = now;
	systime_snapshot->real = FUNC2(base_real, nsec_real);
	systime_snapshot->raw = FUNC2(base_raw, nsec_raw);
}