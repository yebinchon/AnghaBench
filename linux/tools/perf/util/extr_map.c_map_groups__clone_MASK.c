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
struct thread {struct map_groups* mg; } ;
struct maps {int /*<<< orphan*/  lock; } ;
struct map_groups {struct maps maps; } ;
struct map {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct map* FUNC1 (struct map*) ; 
 struct map* FUNC2 (struct map*) ; 
 int /*<<< orphan*/  FUNC3 (struct map*) ; 
 int /*<<< orphan*/  FUNC4 (struct map_groups*,struct map*) ; 
 struct map* FUNC5 (struct maps*) ; 
 int FUNC6 (struct map_groups*,struct map*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct thread *thread, struct map_groups *parent)
{
	struct map_groups *mg = thread->mg;
	int err = -ENOMEM;
	struct map *map;
	struct maps *maps = &parent->maps;

	FUNC0(&maps->lock);

	for (map = FUNC5(maps); map; map = FUNC2(map)) {
		struct map *new = FUNC1(map);
		if (new == NULL)
			goto out_unlock;

		err = FUNC6(mg, new, NULL);
		if (err)
			goto out_unlock;

		FUNC4(mg, new);
		FUNC3(new);
	}

	err = 0;
out_unlock:
	FUNC7(&maps->lock);
	return err;
}