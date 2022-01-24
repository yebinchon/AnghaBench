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
struct perf_stat_evsel {int /*<<< orphan*/ * res_stats; } ;
struct perf_stat_config {int run_count; } ;
struct evsel {struct perf_stat_evsel* stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_stat_config*,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct perf_stat_config *config,
			struct evsel *evsel, double avg)
{
	struct perf_stat_evsel *ps;

	if (config->run_count == 1)
		return;

	ps = evsel->stats;
	FUNC0(config, FUNC1(&ps->res_stats[0]), avg);
}