#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  double u64 ;
struct perf_stat_config {TYPE_1__* aggr_map; int /*<<< orphan*/ * output; } ;
struct evsel {double scale; } ;
struct aggr_data {int id; double val; double ena; double run; int nr; } ;
struct TYPE_2__ {int* map; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  aggr_cb ; 
 int /*<<< orphan*/  FUNC0 (struct perf_stat_config*,struct evsel*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_stat_config*,struct evsel*,int /*<<< orphan*/ ,struct aggr_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_stat_config*,int,int,struct evsel*,double,char*,double,double,double,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rt_stat ; 

__attribute__((used)) static void FUNC5(struct perf_stat_config *config,
				   struct evsel *counter, int s,
				   char *prefix, bool metric_only,
				   bool *first)
{
	struct aggr_data ad;
	FILE *output = config->output;
	u64 ena, run, val;
	int id, nr;
	double uval;

	ad.id = id = config->aggr_map->map[s];
	ad.val = ad.ena = ad.run = 0;
	ad.nr = 0;
	if (!FUNC1(config, counter, aggr_cb, &ad))
		return;

	nr = ad.nr;
	ena = ad.ena;
	run = ad.run;
	val = ad.val;
	if (*first && metric_only) {
		*first = false;
		FUNC0(config, counter, id, nr);
	}
	if (prefix && !metric_only)
		FUNC2(output, "%s", prefix);

	uval = val * counter->scale;
	FUNC4(config, id, nr, counter, uval, prefix,
		 run, ena, 1.0, &rt_stat);
	if (!metric_only)
		FUNC3('\n', output);
}