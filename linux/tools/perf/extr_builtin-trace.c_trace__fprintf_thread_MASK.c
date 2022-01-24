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
struct trace {double nr_events; scalar_t__ sched; } ;
struct thread_trace {double nr_events; double pfmaj; double pfmin; double runtime_ms; } ;
struct thread {int tid; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ EOF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 scalar_t__ FUNC1 (char,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct thread*) ; 
 scalar_t__ FUNC3 (struct thread_trace*,struct trace*,int /*<<< orphan*/ *) ; 
 struct thread_trace* FUNC4 (struct thread*) ; 

__attribute__((used)) static size_t FUNC5(FILE *fp, struct thread *thread, struct trace *trace)
{
	size_t printed = 0;
	struct thread_trace *ttrace = FUNC4(thread);
	double ratio;

	if (ttrace == NULL)
		return 0;

	ratio = (double)ttrace->nr_events / trace->nr_events * 100.0;

	printed += FUNC0(fp, " %s (%d), ", FUNC2(thread), thread->tid);
	printed += FUNC0(fp, "%lu events, ", ttrace->nr_events);
	printed += FUNC0(fp, "%.1f%%", ratio);
	if (ttrace->pfmaj)
		printed += FUNC0(fp, ", %lu majfaults", ttrace->pfmaj);
	if (ttrace->pfmin)
		printed += FUNC0(fp, ", %lu minfaults", ttrace->pfmin);
	if (trace->sched)
		printed += FUNC0(fp, ", %.3f msec\n", ttrace->runtime_ms);
	else if (FUNC1('\n', fp) != EOF)
		++printed;

	printed += FUNC3(ttrace, trace, fp);

	return printed;
}