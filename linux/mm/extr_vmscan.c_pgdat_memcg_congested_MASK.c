#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mem_cgroup {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  PGDAT_CONGESTED ; 
 scalar_t__ FUNC0 (TYPE_1__*,struct mem_cgroup*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(pg_data_t *pgdat, struct mem_cgroup *memcg)
{
	return FUNC1(PGDAT_CONGESTED, &pgdat->flags) ||
		(memcg && FUNC0(pgdat, memcg));
}