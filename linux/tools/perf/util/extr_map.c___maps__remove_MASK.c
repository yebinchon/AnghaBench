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
struct maps {int /*<<< orphan*/  names; int /*<<< orphan*/  entries; } ;
struct map {int /*<<< orphan*/  rb_node_name; int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct map*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct maps *maps, struct map *map)
{
	FUNC1(&map->rb_node, &maps->entries);
	FUNC0(map);

	FUNC1(&map->rb_node_name, &maps->names);
	FUNC0(map);
}