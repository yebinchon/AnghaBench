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
typedef  union perf_event {int dummy; } perf_event ;
struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union perf_event*,struct perf_sample*,struct evsel*) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_sample*,struct evsel*,struct addr_location*) ; 

__attribute__((used)) static void FUNC2(union perf_event *event,
			       struct perf_sample *sample,
			       struct evsel *evsel,
			       struct addr_location *al)
{
	FUNC1(sample, evsel, al);
	FUNC0(event, sample, evsel);
}