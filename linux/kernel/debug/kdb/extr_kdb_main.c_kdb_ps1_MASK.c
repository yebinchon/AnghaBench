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
struct task_struct {int /*<<< orphan*/  comm; int /*<<< orphan*/  thread; TYPE_1__* parent; int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 struct task_struct const* FUNC0 (int) ; 
 struct task_struct const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int FUNC3 (struct task_struct const*) ; 
 scalar_t__ FUNC4 (struct task_struct const*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct const*) ; 
 scalar_t__ FUNC6 (unsigned long*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(const struct task_struct *p)
{
	int cpu;
	unsigned long tmp;

	if (!p || FUNC6(&tmp, (char *)p, sizeof(unsigned long)))
		return;

	cpu = FUNC3(p);
	FUNC2("0x%px %8d %8d  %d %4d   %c  0x%px %c%s\n",
		   (void *)p, p->pid, p->parent->pid,
		   FUNC4(p), FUNC3(p),
		   FUNC5(p),
		   (void *)(&p->thread),
		   p == FUNC1(FUNC7()) ? '*' : ' ',
		   p->comm);
	if (FUNC4(p)) {
		if (!FUNC0(cpu)) {
			FUNC2("  Error: no saved data for this cpu\n");
		} else {
			if (FUNC0(cpu) != p)
				FUNC2("  Error: does not match running "
				   "process table (0x%px)\n", FUNC0(cpu));
		}
	}
}