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
union bpf_attr {int /*<<< orphan*/  map_flags; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_type; } ;
struct bpf_map {int /*<<< orphan*/  numa_node; int /*<<< orphan*/  map_flags; int /*<<< orphan*/  max_entries; int /*<<< orphan*/  value_size; int /*<<< orphan*/  key_size; int /*<<< orphan*/  map_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct bpf_map *map, union bpf_attr *attr)
{
	map->map_type = attr->map_type;
	map->key_size = attr->key_size;
	map->value_size = attr->value_size;
	map->max_entries = attr->max_entries;
	map->map_flags = FUNC1(attr->map_flags);
	map->numa_node = FUNC0(attr);
}