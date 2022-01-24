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
struct bpf_offloaded_map {TYPE_1__* dev_ops; scalar_t__ netdev; } ;
struct bpf_map {int dummy; } ;
struct TYPE_2__ {int (* map_get_next_key ) (struct bpf_offloaded_map*,void*,void*) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct bpf_offloaded_map* FUNC1 (struct bpf_map*) ; 
 int FUNC2 (struct bpf_offloaded_map*,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct bpf_map *map, void *key, void *next_key)
{
	struct bpf_offloaded_map *offmap = FUNC1(map);
	int ret = -ENODEV;

	FUNC0(&bpf_devs_lock);
	if (offmap->netdev)
		ret = offmap->dev_ops->map_get_next_key(offmap, key, next_key);
	FUNC3(&bpf_devs_lock);

	return ret;
}