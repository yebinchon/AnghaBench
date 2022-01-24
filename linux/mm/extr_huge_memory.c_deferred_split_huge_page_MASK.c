#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct deferred_split {int /*<<< orphan*/  split_queue_lock; int /*<<< orphan*/  split_queue_len; int /*<<< orphan*/  split_queue; } ;
struct TYPE_4__ {struct mem_cgroup* mem_cgroup; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  THP_DEFERRED_SPLIT_PAGE ; 
 int /*<<< orphan*/  FUNC2 (int,struct page*) ; 
 TYPE_2__* FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ deferred_split_shrinker ; 
 struct deferred_split* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mem_cgroup*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC13(struct page *page)
{
	struct deferred_split *ds_queue = FUNC5(page);
#ifdef CONFIG_MEMCG
	struct mem_cgroup *memcg = compound_head(page)->mem_cgroup;
#endif
	unsigned long flags;

	FUNC2(!FUNC1(page), page);

	/*
	 * The try_to_unmap() in page reclaim path might reach here too,
	 * this may cause a race condition to corrupt deferred split queue.
	 * And, if page reclaim is already handling the same page, it is
	 * unnecessary to handle it again in shrinker.
	 *
	 * Check PageSwapCache to determine if the page is being
	 * handled by page reclaim since THP swap would add the page into
	 * swap cache before calling try_to_unmap().
	 */
	if (FUNC0(page))
		return;

	FUNC11(&ds_queue->split_queue_lock, flags);
	if (FUNC7(FUNC9(page))) {
		FUNC4(THP_DEFERRED_SPLIT_PAGE);
		FUNC6(FUNC9(page), &ds_queue->split_queue);
		ds_queue->split_queue_len++;
#ifdef CONFIG_MEMCG
		if (memcg)
			memcg_set_shrinker_bit(memcg, page_to_nid(page),
					       deferred_split_shrinker.id);
#endif
	}
	FUNC12(&ds_queue->split_queue_lock, flags);
}