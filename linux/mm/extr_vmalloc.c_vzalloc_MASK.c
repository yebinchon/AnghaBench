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
 int GFP_KERNEL ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int __GFP_ZERO ; 
 void* FUNC0 (unsigned long,int /*<<< orphan*/ ,int) ; 

void *FUNC1(unsigned long size)
{
	return FUNC0(size, NUMA_NO_NODE,
				GFP_KERNEL | __GFP_ZERO);
}