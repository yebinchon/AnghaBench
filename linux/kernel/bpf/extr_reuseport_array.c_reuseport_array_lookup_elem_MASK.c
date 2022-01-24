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
typedef  size_t u32 ;
struct TYPE_2__ {size_t max_entries; } ;
struct reuseport_array {int /*<<< orphan*/ * ptrs; TYPE_1__ map; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct reuseport_array* FUNC1 (struct bpf_map*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void *FUNC3(struct bpf_map *map, void *key)
{
	struct reuseport_array *array = FUNC1(map);
	u32 index = *(u32 *)key;

	if (FUNC2(index >= array->map.max_entries))
		return NULL;

	return FUNC0(array->ptrs[index]);
}