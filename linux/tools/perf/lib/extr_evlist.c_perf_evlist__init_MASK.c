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
struct perf_evlist {scalar_t__ nr_entries; int /*<<< orphan*/  entries; int /*<<< orphan*/ * heads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PERF_EVLIST__HLIST_SIZE ; 

void FUNC2(struct perf_evlist *evlist)
{
	int i;

	for (i = 0; i < PERF_EVLIST__HLIST_SIZE; ++i)
		FUNC0(&evlist->heads[i]);
	FUNC1(&evlist->entries);
	evlist->nr_entries = 0;
}