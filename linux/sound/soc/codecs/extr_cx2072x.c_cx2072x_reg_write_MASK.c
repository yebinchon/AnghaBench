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
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 unsigned int CX2072X_UM_INTERRUPT_CRTL_E ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (void*,unsigned int,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 

__attribute__((used)) static int FUNC3(void *context, unsigned int reg,
			     unsigned int value)
{
	__le32 raw_value;
	unsigned int size;

	size = FUNC2(reg);

	if (reg == CX2072X_UM_INTERRUPT_CRTL_E) {
		/* Update the MSB byte only */
		reg += 3;
		size = 1;
		value >>= 24;
	}

	raw_value = FUNC0(value);
	return FUNC1(context, reg, &raw_value, size);
}