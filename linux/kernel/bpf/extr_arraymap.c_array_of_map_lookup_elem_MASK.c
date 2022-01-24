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
struct bpf_map {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct bpf_map*) ; 
 struct bpf_map** FUNC1 (struct bpf_map*,void*) ; 

__attribute__((used)) static void *FUNC2(struct bpf_map *map, void *key)
{
	struct bpf_map **inner_map = FUNC1(map, key);

	if (!inner_map)
		return NULL;

	return FUNC0(*inner_map);
}