#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lockdep_map {int dummy; } ;
struct TYPE_3__ {int lockdep_recursion; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct lockdep_map*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct lockdep_map*,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

void FUNC7(struct lockdep_map *lock, int nested,
			  unsigned long ip)
{
	unsigned long flags;

	if (FUNC6(current->lockdep_recursion))
		return;

	FUNC4(flags);
	FUNC2(flags);
	current->lockdep_recursion = 1;
	FUNC5(lock, ip);
	if (FUNC0(lock, ip))
		FUNC1(current);
	current->lockdep_recursion = 0;
	FUNC3(flags);
}