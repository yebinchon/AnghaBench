#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EALREADY ; 
 int EDEADLK ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__ o ; 
 TYPE_1__ t ; 
 TYPE_1__ t2 ; 

__attribute__((used)) static void FUNC6(void)
{
	int ret;

	FUNC2(&t);
	t.stamp++;

	ret = FUNC3(&o, &t);

	if (FUNC1(!o.ctx) ||
	    FUNC1(ret))
		return;

	/* No lockdep test, pure API */
	ret = FUNC3(&o, &t);
	FUNC1(ret != -EALREADY);

	ret = FUNC4(&o);
	FUNC1(ret);

	t2 = t;
	t2.stamp++;
	ret = FUNC3(&o, &t2);
	FUNC1(ret != -EDEADLK);
	FUNC5(&o);

	if (FUNC4(&o))
		FUNC5(&o);
#ifdef CONFIG_DEBUG_LOCK_ALLOC
	else
		DEBUG_LOCKS_WARN_ON(1);
#endif
}