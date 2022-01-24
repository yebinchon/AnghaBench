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
struct pin_cookie {int dummy; } ;
struct lockdep_map {int dummy; } ;
struct TYPE_2__ {int lockdep_recursion; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lockdep_map*,struct pin_cookie) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct lockdep_map *lock, struct pin_cookie cookie)
{
	unsigned long flags;

	if (FUNC4(current->lockdep_recursion))
		return;

	FUNC3(flags);
	FUNC1(flags);

	current->lockdep_recursion = 1;
	FUNC0(lock, cookie);
	current->lockdep_recursion = 0;
	FUNC2(flags);
}