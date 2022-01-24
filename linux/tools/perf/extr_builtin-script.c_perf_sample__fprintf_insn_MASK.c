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
struct perf_sample {scalar_t__ insn_len; scalar_t__* insn; } ;
struct perf_event_attr {int dummy; } ;
struct machine {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  BRSTACKINSN ; 
 int /*<<< orphan*/  INSN ; 
 int /*<<< orphan*/  INSNLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sample*,struct thread*,struct machine*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ native_arch ; 
 scalar_t__ FUNC3 (struct perf_sample*,struct thread*,struct perf_event_attr*,struct machine*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct perf_sample *sample,
				     struct perf_event_attr *attr,
				     struct thread *thread,
				     struct machine *machine, FILE *fp)
{
	int printed = 0;

	if (sample->insn_len == 0 && native_arch)
		FUNC1(sample, thread, machine);

	if (FUNC0(INSNLEN))
		printed += FUNC2(fp, " ilen: %d", sample->insn_len);
	if (FUNC0(INSN) && sample->insn_len) {
		int i;

		printed += FUNC2(fp, " insn:");
		for (i = 0; i < sample->insn_len; i++)
			printed += FUNC2(fp, " %02x", (unsigned char)sample->insn[i]);
	}
	if (FUNC0(BRSTACKINSN))
		printed += FUNC3(sample, thread, attr, machine, fp);

	return printed;
}