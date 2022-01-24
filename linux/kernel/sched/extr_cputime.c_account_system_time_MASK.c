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
struct task_struct {int flags; } ;

/* Variables and functions */
 int CPUTIME_IRQ ; 
 int CPUTIME_SOFTIRQ ; 
 int CPUTIME_SYSTEM ; 
 int PF_VCPU ; 
 int /*<<< orphan*/  FUNC0 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 () ; 

void FUNC5(struct task_struct *p, int hardirq_offset, u64 cputime)
{
	int index;

	if ((p->flags & PF_VCPU) && (FUNC4() - hardirq_offset == 0)) {
		FUNC0(p, cputime);
		return;
	}

	if (FUNC2() - hardirq_offset)
		index = CPUTIME_IRQ;
	else if (FUNC3())
		index = CPUTIME_SOFTIRQ;
	else
		index = CPUTIME_SYSTEM;

	FUNC1(p, cputime, index);
}