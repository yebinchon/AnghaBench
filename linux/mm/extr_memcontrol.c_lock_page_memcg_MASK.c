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
struct page {struct mem_cgroup* mem_cgroup; } ;
struct mem_cgroup {unsigned long move_lock_flags; int /*<<< orphan*/  move_lock_task; int /*<<< orphan*/  move_lock; int /*<<< orphan*/  moving_account; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

struct mem_cgroup *FUNC6(struct page *page)
{
	struct mem_cgroup *memcg;
	unsigned long flags;

	/*
	 * The RCU lock is held throughout the transaction.  The fast
	 * path can get away without acquiring the memcg->move_lock
	 * because page moving starts with an RCU grace period.
	 *
	 * The RCU lock also protects the memcg from being freed when
	 * the page state that is going to change is the only thing
	 * preventing the page itself from being freed. E.g. writeback
	 * doesn't hold a page reference and relies on PG_writeback to
	 * keep off truncation, migration and so forth.
         */
	FUNC2();

	if (FUNC1())
		return NULL;
again:
	memcg = page->mem_cgroup;
	if (FUNC5(!memcg))
		return NULL;

	if (FUNC0(&memcg->moving_account) <= 0)
		return memcg;

	FUNC3(&memcg->move_lock, flags);
	if (memcg != page->mem_cgroup) {
		FUNC4(&memcg->move_lock, flags);
		goto again;
	}

	/*
	 * When charge migration first begins, we can have locked and
	 * unlocked page stat updates happening concurrently.  Track
	 * the task who has the lock for unlock_page_memcg().
	 */
	memcg->move_lock_task = current;
	memcg->move_lock_flags = flags;

	return memcg;
}