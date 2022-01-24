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
struct perf_stat_config {int metric_only; int /*<<< orphan*/ * output; } ;
struct evsel {double scale; } ;
struct caggr_data {double avg; int /*<<< orphan*/  avg_enabled; int /*<<< orphan*/  avg_running; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_stat_config*,struct evsel*,int /*<<< orphan*/ ,struct caggr_data*) ; 
 int /*<<< orphan*/  counter_aggr_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_stat_config*,int,int /*<<< orphan*/ ,struct evsel*,double,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_stat ; 

__attribute__((used)) static void FUNC3(struct perf_stat_config *config,
			       struct evsel *counter, char *prefix)
{
	bool metric_only = config->metric_only;
	FILE *output = config->output;
	double uval;
	struct caggr_data cd = { .avg = 0.0 };

	if (!FUNC0(config, counter, counter_aggr_cb, &cd))
		return;

	if (prefix && !metric_only)
		FUNC1(output, "%s", prefix);

	uval = cd.avg * counter->scale;
	FUNC2(config, -1, 0, counter, uval, prefix, cd.avg_running, cd.avg_enabled,
		 cd.avg, &rt_stat);
	if (!metric_only)
		FUNC1(output, "\n");
}