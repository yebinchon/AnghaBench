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
struct lockdep_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lockdep_map*) ; 
 int /*<<< orphan*/  FUNC3 (struct lockdep_map*) ; 

void FUNC4(struct lockdep_map *lock)
{
	FUNC0();

	if (FUNC1())
		FUNC2(lock);
	else
		FUNC3(lock);
}