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
struct addr_map_symbol {scalar_t__ addr; scalar_t__ sym; int /*<<< orphan*/  al_addr; TYPE_1__* map; } ;
struct TYPE_4__ {scalar_t__ start; scalar_t__ end; int /*<<< orphan*/  (* map_ip ) (TYPE_1__*,scalar_t__) ;int /*<<< orphan*/ * groups; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__) ; 

int FUNC3(struct addr_map_symbol *ams)
{
	if (ams->addr < ams->map->start || ams->addr >= ams->map->end) {
		if (ams->map->groups == NULL)
			return -1;
		ams->map = FUNC1(ams->map->groups, ams->addr);
		if (ams->map == NULL)
			return -1;
	}

	ams->al_addr = ams->map->map_ip(ams->map, ams->addr);
	ams->sym = FUNC0(ams->map, ams->al_addr);

	return ams->sym ? 0 : -1;
}