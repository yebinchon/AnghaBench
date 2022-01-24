#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  symbol; } ;
struct probe_trace_event {TYPE_1__ point; } ;
struct probe_cache_entry {int /*<<< orphan*/  node; int /*<<< orphan*/  tevlist; } ;
struct probe_cache {int /*<<< orphan*/  entries; } ;
struct perf_probe_event {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 struct probe_cache_entry* FUNC4 (struct probe_cache*,struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct probe_cache_entry*) ; 
 struct probe_cache_entry* FUNC6 (struct perf_probe_event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC8 (struct probe_trace_event*) ; 

int FUNC9(struct probe_cache *pcache,
			   struct perf_probe_event *pev,
			   struct probe_trace_event *tevs, int ntevs)
{
	struct probe_cache_entry *entry = NULL;
	char *command;
	int i, ret = 0;

	if (!pcache || !pev || !tevs || ntevs <= 0) {
		ret = -EINVAL;
		goto out_err;
	}

	/* Remove old cache entry */
	entry = FUNC4(pcache, pev);
	if (entry) {
		FUNC2(&entry->node);
		FUNC5(entry);
	}

	ret = -ENOMEM;
	entry = FUNC6(pev);
	if (!entry)
		goto out_err;

	for (i = 0; i < ntevs; i++) {
		if (!tevs[i].point.symbol)
			continue;

		command = FUNC8(&tevs[i]);
		if (!command)
			goto out_err;
		FUNC7(entry->tevlist, command);
		FUNC0(command);
	}
	FUNC1(&entry->node, &pcache->entries);
	FUNC3("Added probe cache: %d\n", ntevs);
	return 0;

out_err:
	FUNC3("Failed to add probe caches\n");
	FUNC5(entry);
	return ret;
}