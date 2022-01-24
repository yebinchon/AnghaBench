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
struct TYPE_2__ {void* ctx; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__ o ; 
 int /*<<< orphan*/  t ; 

__attribute__((used)) static void FUNC8(void)
{
	int ret;

	FUNC1(&t);

	/*
	 * None of the ww_mutex codepaths should be taken in the 'normal'
	 * mutex calls. The easiest way to verify this is by using the
	 * normal mutex calls, and making sure o.ctx is unmodified.
	 */

	/* mutex_lock (and indirectly, mutex_lock_nested) */
	o.ctx = (void *)~0UL;
	FUNC2(&o.base);
	FUNC7(&o.base);
	FUNC0(o.ctx != (void *)~0UL);

	/* mutex_lock_interruptible (and *_nested) */
	o.ctx = (void *)~0UL;
	ret = FUNC3(&o.base);
	if (!ret)
		FUNC7(&o.base);
	else
		FUNC0(1);
	FUNC0(o.ctx != (void *)~0UL);

	/* mutex_lock_killable (and *_nested) */
	o.ctx = (void *)~0UL;
	ret = FUNC4(&o.base);
	if (!ret)
		FUNC7(&o.base);
	else
		FUNC0(1);
	FUNC0(o.ctx != (void *)~0UL);

	/* trylock, succeeding */
	o.ctx = (void *)~0UL;
	ret = FUNC6(&o.base);
	FUNC0(!ret);
	if (ret)
		FUNC7(&o.base);
	else
		FUNC0(1);
	FUNC0(o.ctx != (void *)~0UL);

	/* trylock, failing */
	o.ctx = (void *)~0UL;
	FUNC2(&o.base);
	ret = FUNC6(&o.base);
	FUNC0(ret);
	FUNC7(&o.base);
	FUNC0(o.ctx != (void *)~0UL);

	/* nest_lock */
	o.ctx = (void *)~0UL;
	FUNC5(&o.base, &t);
	FUNC7(&o.base);
	FUNC0(o.ctx != (void *)~0UL);
}