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
struct perf_sample {int /*<<< orphan*/  cpu; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nr_cross_allocs ; 
 int FUNC1 (struct evsel*,struct perf_sample*,char*) ; 
 int FUNC2 (struct evsel*,struct perf_sample*) ; 

__attribute__((used)) static int FUNC3(struct evsel *evsel,
						struct perf_sample *sample)
{
	int ret = FUNC2(evsel, sample);

	if (!ret) {
		int node1 = FUNC0(sample->cpu),
		    node2 = FUNC1(evsel, sample, "node");

		if (node1 != node2)
			nr_cross_allocs++;
	}

	return ret;
}