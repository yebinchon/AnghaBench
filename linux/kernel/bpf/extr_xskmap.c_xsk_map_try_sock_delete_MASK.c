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
struct xsk_map {int /*<<< orphan*/  lock; } ;
struct xdp_sock {int dummy; } ;

/* Variables and functions */
 struct xdp_sock* FUNC0 (struct xdp_sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdp_sock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct xdp_sock*,struct xdp_sock**) ; 

void FUNC5(struct xsk_map *map, struct xdp_sock *xs,
			     struct xdp_sock **map_entry)
{
	FUNC2(&map->lock);
	if (FUNC0(*map_entry) == xs) {
		FUNC1(*map_entry, NULL);
		FUNC4(xs, map_entry);
	}
	FUNC3(&map->lock);
}