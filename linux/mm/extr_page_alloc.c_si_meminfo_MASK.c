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
struct sysinfo {int /*<<< orphan*/  mem_unit; int /*<<< orphan*/  freehigh; int /*<<< orphan*/  totalhigh; int /*<<< orphan*/  bufferram; int /*<<< orphan*/  freeram; int /*<<< orphan*/  sharedram; int /*<<< orphan*/  totalram; } ;

/* Variables and functions */
 int /*<<< orphan*/  NR_FREE_PAGES ; 
 int /*<<< orphan*/  NR_SHMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(struct sysinfo *val)
{
	val->totalram = FUNC5();
	val->sharedram = FUNC0(NR_SHMEM);
	val->freeram = FUNC1(NR_FREE_PAGES);
	val->bufferram = FUNC2();
	val->totalhigh = FUNC4();
	val->freehigh = FUNC3();
	val->mem_unit = PAGE_SIZE;
}