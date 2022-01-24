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
 scalar_t__ cpu_idle_force_poll ; 

void FUNC1(bool enable)
{
	if (enable) {
		cpu_idle_force_poll++;
	} else {
		cpu_idle_force_poll--;
		FUNC0(cpu_idle_force_poll < 0);
	}
}