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
struct hashmap {int dummy; } ;
typedef  int /*<<< orphan*/  hashmap_hash_fn ;
typedef  int /*<<< orphan*/  hashmap_equal_fn ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct hashmap* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct hashmap* FUNC2 (int) ; 

struct hashmap *FUNC3(hashmap_hash_fn hash_fn,
			     hashmap_equal_fn equal_fn,
			     void *ctx)
{
	struct hashmap *map = FUNC2(sizeof(struct hashmap));

	if (!map)
		return FUNC0(-ENOMEM);
	FUNC1(map, hash_fn, equal_fn, ctx);
	return map;
}