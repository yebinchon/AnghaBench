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
struct TYPE_2__ {scalar_t__ type; } ;
struct xdp_mem_allocator {int /*<<< orphan*/  rcu; int /*<<< orphan*/  node; int /*<<< orphan*/  page_pool; TYPE_1__ mem; int /*<<< orphan*/  disconnect_cnt; } ;

/* Variables and functions */
 scalar_t__ MEM_TYPE_PAGE_POOL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  __xdp_mem_allocator_rcu_free ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mem_id_ht ; 
 int /*<<< orphan*/  mem_id_lock ; 
 int /*<<< orphan*/  mem_id_rht_params ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct xdp_mem_allocator* FUNC5 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct xdp_mem_allocator*,int,int) ; 

__attribute__((used)) static bool FUNC8(int id, bool force)
{
	struct xdp_mem_allocator *xa;
	bool safe_to_remove = true;

	FUNC2(&mem_id_lock);

	xa = FUNC5(mem_id_ht, &id, mem_id_rht_params);
	if (!xa) {
		FUNC3(&mem_id_lock);
		FUNC0(1, "Request remove non-existing id(%d), driver bug?", id);
		return true;
	}
	xa->disconnect_cnt++;

	/* Detects in-flight packet-pages for page_pool */
	if (xa->mem.type == MEM_TYPE_PAGE_POOL)
		safe_to_remove = FUNC4(xa->page_pool);

	FUNC7(xa, safe_to_remove, force);

	if ((safe_to_remove || force) &&
	    !FUNC6(mem_id_ht, &xa->node, mem_id_rht_params))
		FUNC1(&xa->rcu, __xdp_mem_allocator_rcu_free);

	FUNC3(&mem_id_lock);
	return (safe_to_remove|force);
}