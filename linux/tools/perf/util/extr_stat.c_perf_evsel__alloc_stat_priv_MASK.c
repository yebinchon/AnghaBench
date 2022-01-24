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
struct perf_stat_evsel {int dummy; } ;
struct evsel {int /*<<< orphan*/ * stats; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct evsel *evsel)
{
	evsel->stats = FUNC1(sizeof(struct perf_stat_evsel));
	if (evsel->stats == NULL)
		return -ENOMEM;
	FUNC0(evsel);
	return 0;
}