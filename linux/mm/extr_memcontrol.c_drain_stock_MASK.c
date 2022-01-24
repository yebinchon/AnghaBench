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
struct memcg_stock_pcp {struct mem_cgroup* cached; int /*<<< orphan*/  nr_pages; } ;
struct mem_cgroup {int /*<<< orphan*/  css; int /*<<< orphan*/  memsw; int /*<<< orphan*/  memory; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct memcg_stock_pcp *stock)
{
	struct mem_cgroup *old = stock->cached;

	if (stock->nr_pages) {
		FUNC2(&old->memory, stock->nr_pages);
		if (FUNC1())
			FUNC2(&old->memsw, stock->nr_pages);
		FUNC0(&old->css, stock->nr_pages);
		stock->nr_pages = 0;
	}
	stock->cached = NULL;
}