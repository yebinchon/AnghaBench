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
struct memcg_stock_pcp {unsigned int nr_pages; struct mem_cgroup* cached; } ;
struct mem_cgroup {int dummy; } ;

/* Variables and functions */
 scalar_t__ MEMCG_CHARGE_BATCH ; 
 int /*<<< orphan*/  FUNC0 (struct memcg_stock_pcp*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  memcg_stock ; 
 struct memcg_stock_pcp* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mem_cgroup *memcg, unsigned int nr_pages)
{
	struct memcg_stock_pcp *stock;
	unsigned long flags;

	FUNC2(flags);

	stock = FUNC3(&memcg_stock);
	if (stock->cached != memcg) { /* reset if necessary */
		FUNC0(stock);
		stock->cached = memcg;
	}
	stock->nr_pages += nr_pages;

	if (stock->nr_pages > MEMCG_CHARGE_BATCH)
		FUNC0(stock);

	FUNC1(flags);
}