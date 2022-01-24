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
typedef  void* u8 ;
struct timechart {int dummy; } ;
struct perf_sample {int /*<<< orphan*/  time; int /*<<< orphan*/  cpu; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct evsel*,struct perf_sample*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct timechart*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,void*,char const*) ; 

__attribute__((used)) static int
FUNC2(struct timechart *tchart,
			    struct evsel *evsel,
			    struct perf_sample *sample,
			    const char *backtrace)
{
	u8 flags = FUNC0(evsel, sample, "common_flags");
	int waker = FUNC0(evsel, sample, "common_pid");
	int wakee = FUNC0(evsel, sample, "pid");

	FUNC1(tchart, sample->cpu, sample->time, waker, wakee, flags, backtrace);
	return 0;
}