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
struct probe_cache_entry {int /*<<< orphan*/  pev; int /*<<< orphan*/  spev; int /*<<< orphan*/  tevlist; int /*<<< orphan*/  node; } ;
struct perf_probe_event {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC2 (struct probe_cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_probe_event*) ; 
 struct probe_cache_entry* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct probe_cache_entry**) ; 

__attribute__((used)) static struct probe_cache_entry *
FUNC7(struct perf_probe_event *pev)
{
	struct probe_cache_entry *entry = FUNC5(sizeof(*entry));

	if (entry) {
		FUNC0(&entry->node);
		entry->tevlist = FUNC3(NULL, NULL);
		if (!entry->tevlist)
			FUNC6(&entry);
		else if (pev) {
			entry->spev = FUNC4(pev);
			if (!entry->spev ||
			    FUNC1(&entry->pev, pev) < 0) {
				FUNC2(entry);
				return NULL;
			}
		}
	}

	return entry;
}