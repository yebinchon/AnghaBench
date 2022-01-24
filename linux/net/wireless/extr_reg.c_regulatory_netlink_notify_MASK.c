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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  reg_indoor_lock ; 
 int reg_is_indoor ; 
 scalar_t__ reg_is_indoor_portid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(u32 portid)
{
	FUNC1(&reg_indoor_lock);

	if (reg_is_indoor_portid != portid) {
		FUNC2(&reg_indoor_lock);
		return;
	}

	reg_is_indoor = false;
	reg_is_indoor_portid = 0;

	FUNC2(&reg_indoor_lock);

	FUNC0();
}