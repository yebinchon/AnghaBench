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
 int cpu_count ; 
 int /*<<< orphan*/ ********* current_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *********) ; 
 int /*<<< orphan*/ ********* previous_count ; 

void FUNC1(void)
{
	int num;

	for (num = 0; num < cpu_count; num++) {
		FUNC0(&previous_count[num]);
		FUNC0(&current_count[num]);
	}
	FUNC0(previous_count);
	FUNC0(current_count);
}