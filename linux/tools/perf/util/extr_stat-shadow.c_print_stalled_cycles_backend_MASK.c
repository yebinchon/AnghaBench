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
struct runtime_stat {int dummy; } ;
struct perf_stat_output_ctx {int /*<<< orphan*/  ctx; int /*<<< orphan*/  (* print_metric ) (struct perf_stat_config*,int /*<<< orphan*/ ,char const*,char*,char*,double) ;} ;
struct perf_stat_config {int dummy; } ;
struct evsel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GRC_STALLED_CYCLES_BE ; 
 int /*<<< orphan*/  STAT_CYCLES ; 
 int FUNC0 (struct evsel*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,double) ; 
 double FUNC2 (struct runtime_stat*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_stat_config*,int /*<<< orphan*/ ,char const*,char*,char*,double) ; 

__attribute__((used)) static void FUNC4(struct perf_stat_config *config,
					 int cpu,
					 struct evsel *evsel, double avg,
					 struct perf_stat_output_ctx *out,
					 struct runtime_stat *st)
{
	double total, ratio = 0.0;
	const char *color;
	int ctx = FUNC0(evsel);

	total = FUNC2(st, STAT_CYCLES, ctx, cpu);

	if (total)
		ratio = avg / total * 100.0;

	color = FUNC1(GRC_STALLED_CYCLES_BE, ratio);

	out->print_metric(config, out->ctx, color, "%7.2f%%", "backend cycles idle", ratio);
}