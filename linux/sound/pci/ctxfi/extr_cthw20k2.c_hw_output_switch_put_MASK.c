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
struct hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_DATA ; 
 int /*<<< orphan*/  GPIO_EXT_DATA ; 
 int FUNC0 (struct hw*) ; 
 int FUNC1 (struct hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hw*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct hw *hw, int position)
{
	u32 data;

	if (position == FUNC0(hw))
		return 0;

	/* Mute line and headphones (intended for anti-pop). */
	data = FUNC1(hw, GPIO_DATA);
	data |= (0x03 << 11);
	FUNC2(hw, GPIO_DATA, data);

	data = FUNC1(hw, GPIO_EXT_DATA) & ~0x30;
	switch (position) {
	case 0:
		break;
	case 1:
		data |= 0x10;
		break;
	default:
		data |= 0x20;
	}
	FUNC2(hw, GPIO_EXT_DATA, data);

	/* Unmute line and headphones. */
	data = FUNC1(hw, GPIO_DATA);
	data &= ~(0x03 << 11);
	FUNC2(hw, GPIO_DATA, data);

	return 1;
}