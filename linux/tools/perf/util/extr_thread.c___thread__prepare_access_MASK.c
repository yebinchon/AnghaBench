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
struct thread {TYPE_1__* mg; } ;
struct maps {int /*<<< orphan*/  lock; } ;
struct map {int dummy; } ;
struct TYPE_2__ {struct maps maps; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct map* FUNC1 (struct map*) ; 
 struct map* FUNC2 (struct maps*) ; 
 int FUNC3 (TYPE_1__*,struct map*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct thread *thread)
{
	bool initialized = false;
	int err = 0;
	struct maps *maps = &thread->mg->maps;
	struct map *map;

	FUNC0(&maps->lock);

	for (map = FUNC2(maps); map; map = FUNC1(map)) {
		err = FUNC3(thread->mg, map, &initialized);
		if (err || initialized)
			break;
	}

	FUNC4(&maps->lock);

	return err;
}