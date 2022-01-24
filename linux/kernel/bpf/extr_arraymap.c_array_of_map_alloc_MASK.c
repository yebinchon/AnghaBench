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
union bpf_attr {int /*<<< orphan*/  inner_map_fd; } ;
struct bpf_map {struct bpf_map* inner_map_meta; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bpf_map*) ; 
 struct bpf_map* FUNC1 (union bpf_attr*) ; 
 struct bpf_map* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map*) ; 

__attribute__((used)) static struct bpf_map *FUNC4(union bpf_attr *attr)
{
	struct bpf_map *map, *inner_map_meta;

	inner_map_meta = FUNC2(attr->inner_map_fd);
	if (FUNC0(inner_map_meta))
		return inner_map_meta;

	map = FUNC1(attr);
	if (FUNC0(map)) {
		FUNC3(inner_map_meta);
		return map;
	}

	map->inner_map_meta = inner_map_meta;

	return map;
}