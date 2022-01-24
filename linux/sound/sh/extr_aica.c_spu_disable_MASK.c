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
typedef  int u32 ;

/* Variables and functions */
 scalar_t__ ARM_RESET_REGISTER ; 
 scalar_t__ SPU_REGISTER_BASE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;
	unsigned long flags;
	u32 regval;
	FUNC3();
	regval = FUNC2(ARM_RESET_REGISTER);
	regval |= 1;
	FUNC3();
	FUNC1(flags);
	FUNC4(regval, ARM_RESET_REGISTER);
	FUNC0(flags);
	for (i = 0; i < 64; i++) {
		FUNC3();
		regval = FUNC2(SPU_REGISTER_BASE + (i * 0x80));
		regval = (regval & ~0x4000) | 0x8000;
		FUNC3();
		FUNC1(flags);
		FUNC4(regval, SPU_REGISTER_BASE + (i * 0x80));
		FUNC0(flags);
	}
}