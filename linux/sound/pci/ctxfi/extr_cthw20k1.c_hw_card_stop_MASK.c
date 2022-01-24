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
struct hw {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLLCTL ; 
 int /*<<< orphan*/  TRNCTL ; 
 unsigned int FUNC0 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hw*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct hw *hw)
{
	unsigned int data;

	/* disable transport bus master and queueing of request */
	FUNC1(hw, TRNCTL, 0x00);

	/* disable pll */
	data = FUNC0(hw, PLLCTL);
	FUNC1(hw, PLLCTL, (data & (~(0x0F<<12))));

	/* TODO: Disable interrupt and so on... */
	if (hw->irq >= 0)
		FUNC2(hw->irq);
	return 0;
}