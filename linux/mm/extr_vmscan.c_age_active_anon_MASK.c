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
struct scan_control {int dummy; } ;
struct pglist_data {int dummy; } ;
struct mem_cgroup {int dummy; } ;
struct lruvec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LRU_ACTIVE_ANON ; 
 int /*<<< orphan*/  SWAP_CLUSTER_MAX ; 
 scalar_t__ FUNC0 (struct lruvec*,int,struct scan_control*,int) ; 
 struct mem_cgroup* FUNC1 (int /*<<< orphan*/ *,struct mem_cgroup*,int /*<<< orphan*/ *) ; 
 struct lruvec* FUNC2 (struct pglist_data*,struct mem_cgroup*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct lruvec*,struct scan_control*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  total_swap_pages ; 

__attribute__((used)) static void FUNC4(struct pglist_data *pgdat,
				struct scan_control *sc)
{
	struct mem_cgroup *memcg;

	if (!total_swap_pages)
		return;

	memcg = FUNC1(NULL, NULL, NULL);
	do {
		struct lruvec *lruvec = FUNC2(pgdat, memcg);

		if (FUNC0(lruvec, false, sc, true))
			FUNC3(SWAP_CLUSTER_MAX, lruvec,
					   sc, LRU_ACTIVE_ANON);

		memcg = FUNC1(NULL, memcg, NULL);
	} while (memcg);
}