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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int AICA_CMD_KICK ; 
 int AICA_CMD_STOP ; 
 scalar_t__ AICA_CONTROL_POINT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void)
{
	unsigned long flags;
	FUNC2();
	FUNC1(flags);
	FUNC3(AICA_CMD_KICK | AICA_CMD_STOP, (u32 *) AICA_CONTROL_POINT);
	FUNC0(flags);
}