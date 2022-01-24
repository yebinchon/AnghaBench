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
typedef  int /*<<< orphan*/  u32 ;
struct netprio_map {int priomap_len; int /*<<< orphan*/ * priomap; } ;
struct net_device {int /*<<< orphan*/  priomap; } ;
struct cgroup_subsys_state {TYPE_1__* cgroup; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 struct netprio_map* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC1(struct cgroup_subsys_state *css, struct net_device *dev)
{
	struct netprio_map *map = FUNC0(dev->priomap);
	int id = css->cgroup->id;

	if (map && id < map->priomap_len)
		return map->priomap[id];
	return 0;
}