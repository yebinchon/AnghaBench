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
 unsigned int ORC_REG_BP_INDIRECT ; 
 unsigned int ORC_REG_SP_INDIRECT ; 
 unsigned int ORC_REG_UNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (unsigned int) ; 

__attribute__((used)) static void FUNC2(unsigned int reg, int offset)
{
	if (reg == ORC_REG_BP_INDIRECT)
		FUNC0("(bp%+d)", offset);
	else if (reg == ORC_REG_SP_INDIRECT)
		FUNC0("(sp%+d)", offset);
	else if (reg == ORC_REG_UNDEFINED)
		FUNC0("(und)");
	else
		FUNC0("%s%+d", FUNC1(reg), offset);
}