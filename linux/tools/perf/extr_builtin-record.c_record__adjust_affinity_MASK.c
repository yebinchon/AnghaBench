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
struct TYPE_2__ {scalar_t__ affinity; } ;
struct record {int /*<<< orphan*/  affinity_mask; TYPE_1__ opts; } ;
struct mmap {int /*<<< orphan*/  affinity_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ PERF_AFFINITY_SYS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct record *rec, struct mmap *map)
{
	if (rec->opts.affinity != PERF_AFFINITY_SYS &&
	    !FUNC0(&rec->affinity_mask, &map->affinity_mask)) {
		FUNC2(&rec->affinity_mask);
		FUNC1(&rec->affinity_mask, &rec->affinity_mask, &map->affinity_mask);
		FUNC3(0, sizeof(rec->affinity_mask), &rec->affinity_mask);
	}
}