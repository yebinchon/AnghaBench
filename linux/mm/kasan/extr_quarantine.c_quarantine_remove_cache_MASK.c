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
struct qlist_head {int dummy; } ;
struct kmem_cache {int dummy; } ;

/* Variables and functions */
 struct qlist_head QLIST_INIT ; 
 unsigned long QUARANTINE_BATCHES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * global_quarantine ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kmem_cache*,int) ; 
 int /*<<< orphan*/  per_cpu_remove_cache ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct qlist_head*,struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct qlist_head*,struct kmem_cache*) ; 
 int /*<<< orphan*/  quarantine_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  remove_cache_srcu ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct kmem_cache *cache)
{
	unsigned long flags, i;
	struct qlist_head to_free = QLIST_INIT;

	/*
	 * Must be careful to not miss any objects that are being moved from
	 * per-cpu list to the global quarantine in quarantine_put(),
	 * nor objects being freed in quarantine_reduce(). on_each_cpu()
	 * achieves the first goal, while synchronize_srcu() achieves the
	 * second.
	 */
	FUNC1(per_cpu_remove_cache, cache, 1);

	FUNC5(&quarantine_lock, flags);
	for (i = 0; i < QUARANTINE_BATCHES; i++) {
		if (FUNC2(&global_quarantine[i]))
			continue;
		FUNC4(&global_quarantine[i], &to_free, cache);
		/* Scanning whole quarantine can take a while. */
		FUNC6(&quarantine_lock, flags);
		FUNC0();
		FUNC5(&quarantine_lock, flags);
	}
	FUNC6(&quarantine_lock, flags);

	FUNC3(&to_free, cache);

	FUNC7(&remove_cache_srcu);
}