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
 size_t IDLESTATE_DISABLE ; 
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC2 (unsigned int,unsigned int,size_t) ; 
 int /*<<< orphan*/ * idlestate_value_files ; 

int FUNC3(unsigned int cpu,
				unsigned int idlestate)
{
	if (FUNC0(cpu) <= idlestate)
		return -1;

	if (!FUNC1(cpu, idlestate,
				 idlestate_value_files[IDLESTATE_DISABLE]))
		return -2;
	return FUNC2(cpu, idlestate, IDLESTATE_DISABLE);
}