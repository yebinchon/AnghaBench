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
struct seq_file {int dummy; } ;
struct ftrace_branch_data {int /*<<< orphan*/  line; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 long FUNC0 (struct ftrace_branch_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,long,...) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *m,
			     struct ftrace_branch_data *p, const char *f)
{
	long percent;

	/*
	 * The miss is overlayed on correct, and hit on incorrect.
	 */
	percent = FUNC0(p);

	if (percent < 0)
		FUNC2(m, "  X ");
	else
		FUNC1(m, "%3ld ", percent);

	FUNC1(m, "%-30.30s %-20.20s %d\n", p->func, f, p->line);
}