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
struct qlist_head {scalar_t__ bytes; } ;

/* Variables and functions */
 size_t PAGE_SHIFT ; 
 struct qlist_head QLIST_INIT ; 
 int QUARANTINE_BATCHES ; 
 size_t QUARANTINE_FRACTION ; 
 size_t QUARANTINE_PERCPU_SIZE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * global_quarantine ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct qlist_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct qlist_head*) ; 
 scalar_t__ quarantine_batch_size ; 
 size_t quarantine_head ; 
 int /*<<< orphan*/  quarantine_lock ; 
 scalar_t__ quarantine_max_size ; 
 scalar_t__ quarantine_size ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  remove_cache_srcu ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC11 () ; 

void FUNC12(void)
{
	size_t total_size, new_quarantine_size, percpu_quarantines;
	unsigned long flags;
	int srcu_idx;
	struct qlist_head to_free = QLIST_INIT;

	if (FUNC2(FUNC0(quarantine_size) <=
		   FUNC0(quarantine_max_size)))
		return;

	/*
	 * srcu critical section ensures that quarantine_remove_cache()
	 * will not miss objects belonging to the cache while they are in our
	 * local to_free list. srcu is chosen because (1) it gives us private
	 * grace period domain that does not interfere with anything else,
	 * and (2) it allows synchronize_srcu() to return without waiting
	 * if there are no pending read critical sections (which is the
	 * expected case).
	 */
	srcu_idx = FUNC9(&remove_cache_srcu);
	FUNC7(&quarantine_lock, flags);

	/*
	 * Update quarantine size in case of hotplug. Allocate a fraction of
	 * the installed memory to quarantine minus per-cpu queue limits.
	 */
	total_size = (FUNC11() << PAGE_SHIFT) /
		QUARANTINE_FRACTION;
	percpu_quarantines = QUARANTINE_PERCPU_SIZE * FUNC4();
	new_quarantine_size = (total_size < percpu_quarantines) ?
		0 : total_size - percpu_quarantines;
	FUNC1(quarantine_max_size, new_quarantine_size);
	/* Aim at consuming at most 1/2 of slots in quarantine. */
	FUNC1(quarantine_batch_size, FUNC3((size_t)QUARANTINE_PERCPU_SIZE,
		2 * total_size / QUARANTINE_BATCHES));

	if (FUNC2(quarantine_size > quarantine_max_size)) {
		FUNC6(&global_quarantine[quarantine_head], &to_free);
		FUNC1(quarantine_size, quarantine_size - to_free.bytes);
		quarantine_head++;
		if (quarantine_head == QUARANTINE_BATCHES)
			quarantine_head = 0;
	}

	FUNC8(&quarantine_lock, flags);

	FUNC5(&to_free, NULL);
	FUNC10(&remove_cache_srcu, srcu_idx);
}