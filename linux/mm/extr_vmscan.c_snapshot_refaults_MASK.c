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
struct mem_cgroup {int dummy; } ;
struct lruvec {unsigned long refaults; } ;
typedef  int /*<<< orphan*/  pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  WORKINGSET_ACTIVATE ; 
 unsigned long FUNC0 (struct lruvec*,int /*<<< orphan*/ ) ; 
 struct mem_cgroup* FUNC1 (struct mem_cgroup*,struct mem_cgroup*,int /*<<< orphan*/ *) ; 
 struct lruvec* FUNC2 (int /*<<< orphan*/ *,struct mem_cgroup*) ; 

__attribute__((used)) static void FUNC3(struct mem_cgroup *root_memcg, pg_data_t *pgdat)
{
	struct mem_cgroup *memcg;

	memcg = FUNC1(root_memcg, NULL, NULL);
	do {
		unsigned long refaults;
		struct lruvec *lruvec;

		lruvec = FUNC2(pgdat, memcg);
		refaults = FUNC0(lruvec, WORKINGSET_ACTIVATE);
		lruvec->refaults = refaults;
	} while ((memcg = FUNC1(root_memcg, memcg, NULL)));
}