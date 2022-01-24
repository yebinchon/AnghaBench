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
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static inline void FUNC4(unsigned long *sp)
{
	FUNC1(*sp, *sp + 1);
	FUNC3(); /* Ensure update-side operation after counter increment. */
	FUNC0(FUNC2(*sp) != 1);
}