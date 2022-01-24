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
struct rseq_cs {scalar_t__ abort_ip; int /*<<< orphan*/  post_commit_offset; int /*<<< orphan*/  start_ip; int /*<<< orphan*/  flags; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct task_struct*) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct rseq_cs*) ; 
 unsigned long FUNC2 (struct pt_regs*) ; 
 int /*<<< orphan*/  FUNC3 (struct pt_regs*,unsigned long) ; 
 int FUNC4 (struct task_struct*,struct rseq_cs*) ; 
 int FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct pt_regs *regs)
{
	unsigned long ip = FUNC2(regs);
	struct task_struct *t = current;
	struct rseq_cs rseq_cs;
	int ret;

	ret = FUNC4(t, &rseq_cs);
	if (ret)
		return ret;

	/*
	 * Handle potentially not being within a critical section.
	 * If not nested over a rseq critical section, restart is useless.
	 * Clear the rseq_cs pointer and return.
	 */
	if (!FUNC1(ip, &rseq_cs))
		return FUNC0(t);
	ret = FUNC5(t, rseq_cs.flags);
	if (ret <= 0)
		return ret;
	ret = FUNC0(t);
	if (ret)
		return ret;
	FUNC6(ip, rseq_cs.start_ip, rseq_cs.post_commit_offset,
			    rseq_cs.abort_ip);
	FUNC3(regs, (unsigned long)rseq_cs.abort_ip);
	return 0;
}