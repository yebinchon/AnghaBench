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
struct bpf_map {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* map_fd_sys_lookup_elem ) (void*) ;} ;

/* Variables and functions */
 int ENOENT ; 
 int ENOTSUPP ; 
 void* FUNC0 (void*) ; 
 void** FUNC1 (struct bpf_map*,void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 

int FUNC5(struct bpf_map *map, void *key, u32 *value)
{
	void **elem, *ptr;
	int ret =  0;

	if (!map->ops->map_fd_sys_lookup_elem)
		return -ENOTSUPP;

	FUNC2();
	elem = FUNC1(map, key);
	if (elem && (ptr = FUNC0(*elem)))
		*value = map->ops->map_fd_sys_lookup_elem(ptr);
	else
		ret = -ENOENT;
	FUNC3();

	return ret;
}