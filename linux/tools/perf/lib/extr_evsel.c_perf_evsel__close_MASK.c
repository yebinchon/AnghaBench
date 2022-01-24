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
struct perf_evsel {int /*<<< orphan*/ * fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct perf_evsel*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_evsel*) ; 

void FUNC2(struct perf_evsel *evsel)
{
	if (evsel->fd == NULL)
		return;

	FUNC0(evsel);
	FUNC1(evsel);
}