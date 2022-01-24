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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static inline void FUNC5(unsigned long *sp)
{
	FUNC4(); /* Ensure update-side operation before counter increment. */
	FUNC0(!FUNC3(*sp));
	FUNC1(*sp, FUNC2(sp));
}