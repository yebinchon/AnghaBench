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
struct TYPE_2__ {scalar_t__ rw_sem; } ;
struct super_block {TYPE_1__ s_writers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

int FUNC4(struct super_block *sb, int level, bool wait)
{
	bool force_trylock = false;
	int ret = 1;

#ifdef CONFIG_LOCKDEP
	/*
	 * We want lockdep to tell us about possible deadlocks with freezing
	 * but it's it bit tricky to properly instrument it. Getting a freeze
	 * protection works as getting a read lock but there are subtle
	 * problems. XFS for example gets freeze protection on internal level
	 * twice in some cases, which is OK only because we already hold a
	 * freeze protection also on higher level. Due to these cases we have
	 * to use wait == F (trylock mode) which must not fail.
	 */
	if (wait) {
		int i;

		for (i = 0; i < level - 1; i++)
			if (percpu_rwsem_is_held(sb->s_writers.rw_sem + i)) {
				force_trylock = true;
				break;
			}
	}
#endif
	if (wait && !force_trylock)
		FUNC1(sb->s_writers.rw_sem + level-1);
	else
		ret = FUNC2(sb->s_writers.rw_sem + level-1);

	FUNC0(force_trylock && !ret);
	return ret;
}