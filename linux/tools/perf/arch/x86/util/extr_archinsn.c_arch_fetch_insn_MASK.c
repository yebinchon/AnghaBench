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
struct thread {int dummy; } ;
struct perf_sample {int insn_len; int /*<<< orphan*/  insn; int /*<<< orphan*/  ip; } ;
struct machine {int dummy; } ;
struct insn {int length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct insn*) ; 
 int /*<<< orphan*/  FUNC1 (struct insn*) ; 
 int /*<<< orphan*/  FUNC2 (struct insn*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (struct thread*,struct machine*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 

void FUNC4(struct perf_sample *sample,
		     struct thread *thread,
		     struct machine *machine)
{
	struct insn insn;
	int len;
	bool is64bit = false;

	if (!sample->ip)
		return;
	len = FUNC3(thread, machine, sample->insn, sample->ip, sizeof(sample->insn), &is64bit);
	if (len <= 0)
		return;
	FUNC2(&insn, sample->insn, len, is64bit);
	FUNC1(&insn);
	if (FUNC0(&insn) && insn.length <= len)
		sample->insn_len = insn.length;
}