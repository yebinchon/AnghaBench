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
 int /*<<< orphan*/  FUNC0 (void const*,int) ; 
 scalar_t__ FUNC1 (int) ; 

void FUNC2(const void *stack_top, const void *stack_bottom)
{
	if (FUNC1(!stack_top || stack_top > stack_bottom))
		return;

	FUNC0(stack_top, stack_bottom - stack_top);
}