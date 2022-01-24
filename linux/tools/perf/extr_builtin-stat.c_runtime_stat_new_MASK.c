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
struct perf_stat_config {int stats_num; int /*<<< orphan*/ * stats; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct perf_stat_config *config, int nthreads)
{
	int i;

	config->stats = FUNC0(nthreads, sizeof(struct runtime_stat));
	if (!config->stats)
		return -1;

	config->stats_num = nthreads;

	for (i = 0; i < nthreads; i++)
		FUNC1(&config->stats[i]);

	return 0;
}