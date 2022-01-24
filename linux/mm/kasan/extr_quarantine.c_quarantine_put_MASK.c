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
struct kmem_cache {int /*<<< orphan*/  size; } ;
struct kasan_free_meta {int /*<<< orphan*/  quarantine_link; } ;

/* Variables and functions */
 struct qlist_head QLIST_INIT ; 
 int QUARANTINE_BATCHES ; 
 scalar_t__ QUARANTINE_PERCPU_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  cpu_quarantine ; 
 struct qlist_head* global_quarantine ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct qlist_head*,struct qlist_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct qlist_head*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  quarantine_batch_size ; 
 int quarantine_head ; 
 int /*<<< orphan*/  quarantine_lock ; 
 scalar_t__ quarantine_size ; 
 size_t quarantine_tail ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct qlist_head* FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

void FUNC10(struct kasan_free_meta *info, struct kmem_cache *cache)
{
	unsigned long flags;
	struct qlist_head *q;
	struct qlist_head temp = QLIST_INIT;

	/*
	 * Note: irq must be disabled until after we move the batch to the
	 * global quarantine. Otherwise quarantine_remove_cache() can miss
	 * some objects belonging to the cache if they are in our local temp
	 * list. quarantine_remove_cache() executes on_each_cpu() at the
	 * beginning which ensures that it either sees the objects in per-cpu
	 * lists or in the global quarantine.
	 */
	FUNC3(flags);

	q = FUNC8(&cpu_quarantine);
	FUNC5(q, &info->quarantine_link, cache->size);
	if (FUNC9(q->bytes > QUARANTINE_PERCPU_SIZE)) {
		FUNC4(q, &temp);

		FUNC6(&quarantine_lock);
		FUNC1(quarantine_size, quarantine_size + temp.bytes);
		FUNC4(&temp, &global_quarantine[quarantine_tail]);
		if (global_quarantine[quarantine_tail].bytes >=
				FUNC0(quarantine_batch_size)) {
			int new_tail;

			new_tail = quarantine_tail + 1;
			if (new_tail == QUARANTINE_BATCHES)
				new_tail = 0;
			if (new_tail != quarantine_head)
				quarantine_tail = new_tail;
		}
		FUNC7(&quarantine_lock);
	}

	FUNC2(flags);
}