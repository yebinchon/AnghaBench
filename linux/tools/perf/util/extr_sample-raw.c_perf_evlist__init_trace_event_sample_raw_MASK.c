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
struct evlist {int /*<<< orphan*/  trace_event_sample_raw; int /*<<< orphan*/  env; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  perf_evlist__s390_sample_raw ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void FUNC2(struct evlist *evlist)
{
	const char *arch_pf = FUNC0(evlist->env);

	if (arch_pf && !FUNC1("s390", arch_pf))
		evlist->trace_event_sample_raw = perf_evlist__s390_sample_raw;
}