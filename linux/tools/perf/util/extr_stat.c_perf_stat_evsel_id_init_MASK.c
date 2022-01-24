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
struct perf_stat_evsel {int id; } ;
struct evsel {struct perf_stat_evsel* stats; } ;

/* Variables and functions */
 int PERF_STAT_EVSEL_ID__MAX ; 
 int /*<<< orphan*/ * id_str ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct evsel *evsel)
{
	struct perf_stat_evsel *ps = evsel->stats;
	int i;

	/* ps->id is 0 hence PERF_STAT_EVSEL_ID__NONE by default */

	for (i = 0; i < PERF_STAT_EVSEL_ID__MAX; i++) {
		if (!FUNC1(FUNC0(evsel), id_str[i])) {
			ps->id = i;
			break;
		}
	}
}