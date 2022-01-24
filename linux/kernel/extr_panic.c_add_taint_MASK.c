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
typedef  enum lockdep_ok { ____Placeholder_lockdep_ok } lockdep_ok ;

/* Variables and functions */
 int LOCKDEP_NOW_UNRELIABLE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tainted_mask ; 

void FUNC3(unsigned flag, enum lockdep_ok lockdep_ok)
{
	if (lockdep_ok == LOCKDEP_NOW_UNRELIABLE && FUNC0())
		FUNC1("Disabling lock debugging due to kernel taint\n");

	FUNC2(flag, &tainted_mask);
}