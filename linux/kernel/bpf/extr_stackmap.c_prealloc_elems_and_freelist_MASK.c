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
typedef  int u32 ;
struct stack_map_bucket {int dummy; } ;
struct TYPE_2__ {int value_size; int max_entries; int /*<<< orphan*/  numa_node; } ;
struct bpf_stack_map {int /*<<< orphan*/  elems; TYPE_1__ map; int /*<<< orphan*/  freelist; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC4(struct bpf_stack_map *smap)
{
	u32 elem_size = sizeof(struct stack_map_bucket) + smap->map.value_size;
	int err;

	smap->elems = FUNC0(elem_size * smap->map.max_entries,
					 smap->map.numa_node);
	if (!smap->elems)
		return -ENOMEM;

	err = FUNC2(&smap->freelist);
	if (err)
		goto free_elems;

	FUNC3(&smap->freelist, smap->elems, elem_size,
			       smap->map.max_entries);
	return 0;

free_elems:
	FUNC1(smap->elems);
	return err;
}