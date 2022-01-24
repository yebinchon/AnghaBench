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
struct shrinker {long batch; int flags; long (* count_objects ) (struct shrinker*,struct shrink_control*) ;unsigned long (* scan_objects ) (struct shrinker*,struct shrink_control*) ;int /*<<< orphan*/ * nr_deferred; int /*<<< orphan*/  seeks; } ;
struct shrink_control {int nid; unsigned long nr_to_scan; unsigned long nr_scanned; } ;

/* Variables and functions */
 int SHRINKER_NUMA_AWARE ; 
 long SHRINK_BATCH ; 
 long SHRINK_EMPTY ; 
 unsigned long SHRINK_STOP ; 
 int /*<<< orphan*/  SLABS_SCANNED ; 
 long FUNC0 (long,int /*<<< orphan*/ *) ; 
 long FUNC1 (int /*<<< orphan*/ *) ; 
 long FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,int /*<<< orphan*/ ) ; 
 void* FUNC6 (long,long) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long (*) (struct shrinker*,struct shrink_control*),long) ; 
 long FUNC8 (struct shrinker*,struct shrink_control*) ; 
 unsigned long FUNC9 (struct shrinker*,struct shrink_control*) ; 
 int /*<<< orphan*/  FUNC10 (struct shrinker*,int,unsigned long,long,long,long) ; 
 int /*<<< orphan*/  FUNC11 (struct shrinker*,struct shrink_control*,long,long,unsigned long long,long,int) ; 

__attribute__((used)) static unsigned long FUNC12(struct shrink_control *shrinkctl,
				    struct shrinker *shrinker, int priority)
{
	unsigned long freed = 0;
	unsigned long long delta;
	long total_scan;
	long freeable;
	long nr;
	long new_nr;
	int nid = shrinkctl->nid;
	long batch_size = shrinker->batch ? shrinker->batch
					  : SHRINK_BATCH;
	long scanned = 0, next_deferred;

	if (!(shrinker->flags & SHRINKER_NUMA_AWARE))
		nid = 0;

	freeable = shrinker->count_objects(shrinker, shrinkctl);
	if (freeable == 0 || freeable == SHRINK_EMPTY)
		return freeable;

	/*
	 * copy the current shrinker scan count into a local variable
	 * and zero it so that other concurrent shrinker invocations
	 * don't also do this scanning work.
	 */
	nr = FUNC2(&shrinker->nr_deferred[nid], 0);

	total_scan = nr;
	if (shrinker->seeks) {
		delta = freeable >> priority;
		delta *= 4;
		FUNC5(delta, shrinker->seeks);
	} else {
		/*
		 * These objects don't require any IO to create. Trim
		 * them aggressively under memory pressure to keep
		 * them from causing refetches in the IO caches.
		 */
		delta = freeable / 2;
	}

	total_scan += delta;
	if (total_scan < 0) {
		FUNC7("shrink_slab: %pS negative objects to delete nr=%ld\n",
		       shrinker->scan_objects, total_scan);
		total_scan = freeable;
		next_deferred = nr;
	} else
		next_deferred = total_scan;

	/*
	 * We need to avoid excessive windup on filesystem shrinkers
	 * due to large numbers of GFP_NOFS allocations causing the
	 * shrinkers to return -1 all the time. This results in a large
	 * nr being built up so when a shrink that can do some work
	 * comes along it empties the entire cache due to nr >>>
	 * freeable. This is bad for sustaining a working set in
	 * memory.
	 *
	 * Hence only allow the shrinker to scan the entire cache when
	 * a large delta change is calculated directly.
	 */
	if (delta < freeable / 4)
		total_scan = FUNC6(total_scan, freeable / 2);

	/*
	 * Avoid risking looping forever due to too large nr value:
	 * never try to free more than twice the estimate number of
	 * freeable entries.
	 */
	if (total_scan > freeable * 2)
		total_scan = freeable * 2;

	FUNC11(shrinker, shrinkctl, nr,
				   freeable, delta, total_scan, priority);

	/*
	 * Normally, we should not scan less than batch_size objects in one
	 * pass to avoid too frequent shrinker calls, but if the slab has less
	 * than batch_size objects in total and we are really tight on memory,
	 * we will try to reclaim all available objects, otherwise we can end
	 * up failing allocations although there are plenty of reclaimable
	 * objects spread over several slabs with usage less than the
	 * batch_size.
	 *
	 * We detect the "tight on memory" situations by looking at the total
	 * number of objects we want to scan (total_scan). If it is greater
	 * than the total number of objects on slab (freeable), we must be
	 * scanning at high prio and therefore should try to reclaim as much as
	 * possible.
	 */
	while (total_scan >= batch_size ||
	       total_scan >= freeable) {
		unsigned long ret;
		unsigned long nr_to_scan = FUNC6(batch_size, total_scan);

		shrinkctl->nr_to_scan = nr_to_scan;
		shrinkctl->nr_scanned = nr_to_scan;
		ret = shrinker->scan_objects(shrinker, shrinkctl);
		if (ret == SHRINK_STOP)
			break;
		freed += ret;

		FUNC4(SLABS_SCANNED, shrinkctl->nr_scanned);
		total_scan -= shrinkctl->nr_scanned;
		scanned += shrinkctl->nr_scanned;

		FUNC3();
	}

	if (next_deferred >= scanned)
		next_deferred -= scanned;
	else
		next_deferred = 0;
	/*
	 * move the unused scan count back into the shrinker in a
	 * manner that handles concurrent updates. If we exhausted the
	 * scan, there is no need to do an update.
	 */
	if (next_deferred > 0)
		new_nr = FUNC0(next_deferred,
						&shrinker->nr_deferred[nid]);
	else
		new_nr = FUNC1(&shrinker->nr_deferred[nid]);

	FUNC10(shrinker, nid, freed, nr, new_nr, total_scan);
	return freed;
}