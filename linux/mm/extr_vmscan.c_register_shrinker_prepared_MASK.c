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
struct shrinker {int flags; int /*<<< orphan*/  id; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int SHRINKER_MEMCG_AWARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct shrinker*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  shrinker_idr ; 
 int /*<<< orphan*/  shrinker_list ; 
 int /*<<< orphan*/  shrinker_rwsem ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct shrinker *shrinker)
{
	FUNC0(&shrinker_rwsem);
	FUNC2(&shrinker->list, &shrinker_list);
#ifdef CONFIG_MEMCG_KMEM
	if (shrinker->flags & SHRINKER_MEMCG_AWARE)
		idr_replace(&shrinker_idr, shrinker, shrinker->id);
#endif
	FUNC3(&shrinker_rwsem);
}