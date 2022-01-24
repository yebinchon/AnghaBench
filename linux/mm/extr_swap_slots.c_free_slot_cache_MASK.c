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
 int SLOTS_CACHE ; 
 int SLOTS_CACHE_RET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  swap_slots_cache_mutex ; 

__attribute__((used)) static int FUNC3(unsigned int cpu)
{
	FUNC1(&swap_slots_cache_mutex);
	FUNC0(cpu, SLOTS_CACHE | SLOTS_CACHE_RET, true);
	FUNC2(&swap_slots_cache_mutex);
	return 0;
}