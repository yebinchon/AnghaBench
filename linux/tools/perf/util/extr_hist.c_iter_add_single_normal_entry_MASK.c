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
struct hist_entry_iter {struct hist_entry* he; int /*<<< orphan*/  parent; struct perf_sample* sample; struct evsel* evsel; } ;
struct hist_entry {int dummy; } ;
struct evsel {int dummy; } ;
struct addr_location {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct evsel*) ; 
 struct hist_entry* FUNC1 (int /*<<< orphan*/ ,struct addr_location*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct perf_sample*,int) ; 

__attribute__((used)) static int
FUNC2(struct hist_entry_iter *iter, struct addr_location *al)
{
	struct evsel *evsel = iter->evsel;
	struct perf_sample *sample = iter->sample;
	struct hist_entry *he;

	he = FUNC1(FUNC0(evsel), al, iter->parent, NULL, NULL,
			      sample, true);
	if (he == NULL)
		return -ENOMEM;

	iter->he = he;
	return 0;
}