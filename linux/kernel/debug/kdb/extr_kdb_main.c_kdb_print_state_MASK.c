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
 int /*<<< orphan*/  kdb_initial_cpu ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kdb_state ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(const char *text, int value)
{
	FUNC0("state: %s cpu %d value %d initial %d state %x\n",
		   text, FUNC1(), value, kdb_initial_cpu,
		   kdb_state);
}