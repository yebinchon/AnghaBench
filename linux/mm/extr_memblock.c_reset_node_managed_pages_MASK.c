#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zone {int /*<<< orphan*/  managed_pages; } ;
struct TYPE_3__ {struct zone* node_zones; } ;
typedef  TYPE_1__ pg_data_t ;

/* Variables and functions */
 int MAX_NR_ZONES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(pg_data_t *pgdat)
{
	struct zone *z;

	for (z = pgdat->node_zones; z < pgdat->node_zones + MAX_NR_ZONES; z++)
		FUNC0(&z->managed_pages, 0);
}