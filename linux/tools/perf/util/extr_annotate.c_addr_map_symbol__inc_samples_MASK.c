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
struct perf_sample {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_map_symbol {int /*<<< orphan*/  al_addr; int /*<<< orphan*/  map; int /*<<< orphan*/  sym; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct evsel*,int /*<<< orphan*/ ,struct perf_sample*) ; 

int FUNC1(struct addr_map_symbol *ams, struct perf_sample *sample,
				 struct evsel *evsel)
{
	return FUNC0(ams->sym, ams->map, evsel, ams->al_addr, sample);
}