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
typedef  int /*<<< orphan*/  u64 ;
struct thread {int dummy; } ;
struct regs_dump {int /*<<< orphan*/  mask; int /*<<< orphan*/ * regs; int /*<<< orphan*/  abi; } ;
struct perf_sample {struct regs_dump user_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_REGS_MASK ; 
 int PERF_REGS_MAX ; 
 int /*<<< orphan*/  PERF_SAMPLE_REGS_ABI ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (struct perf_sample*,struct thread*,int /*<<< orphan*/ *) ; 

int FUNC4(struct perf_sample *sample,
			     struct thread *thread)
{
	struct regs_dump *regs = &sample->user_regs;
	u64 *buf;

	buf = FUNC0(sizeof(u64) * PERF_REGS_MAX);
	if (!buf) {
		FUNC2("failed to allocate sample uregs data\n");
		return -1;
	}

	FUNC1(buf);
	regs->abi  = PERF_SAMPLE_REGS_ABI;
	regs->regs = buf;
	regs->mask = PERF_REGS_MASK;

	return FUNC3(sample, thread, buf);
}