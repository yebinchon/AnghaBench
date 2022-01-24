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
struct htab_elem {int dummy; } ;
struct bpf_map {int /*<<< orphan*/  key_size; } ;

/* Variables and functions */
 struct htab_elem* FUNC0 (struct bpf_map*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct htab_elem*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC3(struct bpf_map *map, void *key)
{
	struct htab_elem *l = FUNC0(map, key);

	if (l)
		return FUNC2(FUNC1(l, map->key_size));
	else
		return NULL;
}