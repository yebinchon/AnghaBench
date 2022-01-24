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
struct trace {int /*<<< orphan*/  output; scalar_t__ print_sample; } ;
struct thread {int dummy; } ;
struct perf_sample {int pid; int tid; int cpu; scalar_t__ time; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 double NSEC_PER_MSEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,char*,double,char*,int,int,int) ; 
 char* FUNC1 (struct evsel*) ; 
 char* FUNC2 (struct thread*) ; 

__attribute__((used)) static int FUNC3(struct trace *trace, struct evsel *evsel,
				 struct perf_sample *sample, struct thread *thread)
{
	int printed = 0;

	if (trace->print_sample) {
		double ts = (double)sample->time / NSEC_PER_MSEC;

		printed += FUNC0(trace->output, "%22s %10.3f %s %d/%d [%d]\n",
				   FUNC1(evsel), ts,
				   FUNC2(thread),
				   sample->pid, sample->tid, sample->cpu);
	}

	return printed;
}