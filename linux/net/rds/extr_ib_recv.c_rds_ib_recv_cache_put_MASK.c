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
struct rds_ib_refill_cache {TYPE_1__* percpu; int /*<<< orphan*/  xfer; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; int /*<<< orphan*/  first; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 struct list_head* RDS_IB_RECYCLE_BATCH_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct list_head* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct list_head*) ; 
 struct list_head* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*,struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 struct list_head* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct list_head *new_item,
				 struct rds_ib_refill_cache *cache)
{
	unsigned long flags;
	struct list_head *old, *chpfirst;

	FUNC8(flags);

	chpfirst = FUNC2(cache->percpu->first);
	if (!chpfirst)
		FUNC0(new_item);
	else /* put on front */
		FUNC5(new_item, chpfirst);

	FUNC3(cache->percpu->first, new_item);
	FUNC1(cache->percpu->count);

	if (FUNC2(cache->percpu->count) < RDS_IB_RECYCLE_BATCH_COUNT)
		goto end;

	/*
	 * Return our per-cpu first list to the cache's xfer by atomically
	 * grabbing the current xfer list, appending it to our per-cpu list,
	 * and then atomically returning that entire list back to the
	 * cache's xfer list as long as it's still empty.
	 */
	do {
		old = FUNC9(&cache->xfer, NULL);
		if (old)
			FUNC6(old, chpfirst);
		old = FUNC4(&cache->xfer, NULL, chpfirst);
	} while (old);


	FUNC3(cache->percpu->first, NULL);
	FUNC3(cache->percpu->count, 0);
end:
	FUNC7(flags);
}