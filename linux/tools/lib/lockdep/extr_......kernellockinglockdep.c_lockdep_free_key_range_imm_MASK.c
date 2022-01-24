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
struct pending_free {int dummy; } ;
struct TYPE_2__ {struct pending_free* pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pending_free*) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_free*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ delayed_free ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  lockdep_lock ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static void FUNC7(void *start, unsigned long size)
{
	struct pending_free *pf = delayed_free.pf;
	unsigned long flags;

	FUNC4();

	FUNC6(flags);
	FUNC2(&lockdep_lock);
	FUNC1(pf, start, size);
	FUNC0(pf);
	FUNC3(&lockdep_lock);
	FUNC5(flags);
}