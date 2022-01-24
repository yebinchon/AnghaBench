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
struct lockdep_map {int dummy; } ;
struct TYPE_2__ {struct pending_free* pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pending_free*) ; 
 int /*<<< orphan*/  FUNC1 (struct pending_free*,struct lockdep_map*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__ delayed_free ; 
 int /*<<< orphan*/  lockdep_lock ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 

__attribute__((used)) static void FUNC6(struct lockdep_map *lock)
{
	struct pending_free *pf = delayed_free.pf;
	unsigned long flags;

	FUNC5(flags);
	FUNC2(&lockdep_lock);
	FUNC1(pf, lock);
	FUNC0(pf);
	FUNC3(&lockdep_lock);
	FUNC4(flags);
}