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
 scalar_t__ full_range ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
	if (full_range)
		FUNC0("|1ns     |10ns     |100ns    |1us      |10us     |100us"
		       "    |1ms      |10ms     |100ms    |1s       |10s\n");
	else
		FUNC0("|1us      |10us     |100us    |1ms      |10ms     "
		       "|100ms    |1s       |10s\n");
}