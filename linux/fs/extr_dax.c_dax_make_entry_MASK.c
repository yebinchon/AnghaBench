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
typedef  int /*<<< orphan*/  pfn_t ;

/* Variables and functions */
 unsigned long DAX_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned long) ; 

__attribute__((used)) static void *FUNC2(pfn_t pfn, unsigned long flags)
{
	return FUNC1(flags | (FUNC0(pfn) << DAX_SHIFT));
}