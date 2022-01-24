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
 int /*<<< orphan*/  BIC_CPU_LPI ; 
 int /*<<< orphan*/  BIC_GFXMHz ; 
 int /*<<< orphan*/  BIC_GFX_rc6 ; 
 int /*<<< orphan*/  BIC_IRQ ; 
 int /*<<< orphan*/  BIC_SYS_LPI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

int FUNC6(void)
{
	if (FUNC0(BIC_IRQ))
		if (FUNC4())
			return 1;

	if (FUNC0(BIC_GFX_rc6))
		FUNC3();

	if (FUNC0(BIC_GFXMHz))
		FUNC2();

	if (FUNC0(BIC_CPU_LPI))
		FUNC1();

	if (FUNC0(BIC_SYS_LPI))
		FUNC5();

	return 0;
}