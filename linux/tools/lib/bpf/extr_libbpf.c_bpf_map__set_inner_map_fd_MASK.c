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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct bpf_map {int inner_map_fd; TYPE_1__ def; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

int FUNC2(struct bpf_map *map, int fd)
{
	if (!FUNC0(map->def.type)) {
		FUNC1("error: unsupported map type\n");
		return -EINVAL;
	}
	if (map->inner_map_fd != -1) {
		FUNC1("error: inner_map_fd already specified\n");
		return -EINVAL;
	}
	map->inner_map_fd = fd;
	return 0;
}