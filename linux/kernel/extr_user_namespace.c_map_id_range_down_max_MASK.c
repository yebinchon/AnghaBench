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
typedef  void* u32 ;
struct uid_gid_map {int /*<<< orphan*/  forward; } ;
struct uid_gid_extent {int dummy; } ;
struct idmap_key {int map_up; void* id; void* count; } ;

/* Variables and functions */
 struct uid_gid_extent* FUNC0 (struct idmap_key*,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmp_map_id ; 

__attribute__((used)) static struct uid_gid_extent *
FUNC1(unsigned extents, struct uid_gid_map *map, u32 id, u32 count)
{
	struct idmap_key key;

	key.map_up = false;
	key.count = count;
	key.id = id;

	return FUNC0(&key, map->forward, extents,
		       sizeof(struct uid_gid_extent), cmp_map_id);
}