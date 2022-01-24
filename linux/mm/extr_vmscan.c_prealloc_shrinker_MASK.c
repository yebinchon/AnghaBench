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
struct shrinker {int flags; int /*<<< orphan*/ * nr_deferred; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SHRINKER_MEMCG_AWARE ; 
 int SHRINKER_NUMA_AWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int nr_node_ids ; 
 scalar_t__ FUNC2 (struct shrinker*) ; 

int FUNC3(struct shrinker *shrinker)
{
	unsigned int size = sizeof(*shrinker->nr_deferred);

	if (shrinker->flags & SHRINKER_NUMA_AWARE)
		size *= nr_node_ids;

	shrinker->nr_deferred = FUNC1(size, GFP_KERNEL);
	if (!shrinker->nr_deferred)
		return -ENOMEM;

	if (shrinker->flags & SHRINKER_MEMCG_AWARE) {
		if (FUNC2(shrinker))
			goto free_deferred;
	}

	return 0;

free_deferred:
	FUNC0(shrinker->nr_deferred);
	shrinker->nr_deferred = NULL;
	return -ENOMEM;
}