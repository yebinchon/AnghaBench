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
struct regs_dump {scalar_t__ regs; } ;
struct perf_sample {struct regs_dump intr_regs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct regs_dump*) ; 

__attribute__((used)) static void FUNC1(struct perf_sample *sample)
{
	struct regs_dump *intr_regs = &sample->intr_regs;

	if (intr_regs->regs)
		FUNC0("intr", intr_regs);
}