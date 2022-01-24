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
struct perf_stat_config {int /*<<< orphan*/  csv_sep; } ;
struct outstate {char* prefix; int nfields; int /*<<< orphan*/  fh; int /*<<< orphan*/  nr; int /*<<< orphan*/  id; int /*<<< orphan*/  evsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_stat_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct perf_stat_config *config, void *ctx)
{
	struct outstate *os = ctx;
	int i;

	FUNC2('\n', os->fh);
	if (os->prefix)
		FUNC1(os->fh, "%s%d", os->prefix, config->csv_sep);
	FUNC0(config, os->evsel, os->id, os->nr);
	for (i = 0; i < os->nfields; i++)
		FUNC3(config->csv_sep, os->fh);
}