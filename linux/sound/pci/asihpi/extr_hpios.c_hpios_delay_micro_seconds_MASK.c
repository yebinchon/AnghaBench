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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 

void FUNC5(u32 num_micro_sec)
{
	if ((FUNC4(num_micro_sec) > 1) && !FUNC0()) {
		/* MUST NOT SCHEDULE IN INTERRUPT CONTEXT! */
		FUNC2(FUNC4
			(num_micro_sec));
	} else if (num_micro_sec <= 2000)
		FUNC3(num_micro_sec);
	else
		FUNC1(num_micro_sec / 1000);

}