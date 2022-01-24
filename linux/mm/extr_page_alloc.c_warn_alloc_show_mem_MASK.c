#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nodemask_t ;
typedef  int gfp_t ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int PF_EXITING ; 
 int PF_MEMALLOC ; 
 unsigned int SHOW_MEM_FILTER_NODES ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_NOMEMALLOC ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(gfp_t gfp_mask, nodemask_t *nodemask)
{
	unsigned int filter = SHOW_MEM_FILTER_NODES;

	/*
	 * This documents exceptions given to allocations in certain
	 * contexts that are allowed to allocate outside current's set
	 * of allowed nodes.
	 */
	if (!(gfp_mask & __GFP_NOMEMALLOC))
		if (FUNC2(current) ||
		    (current->flags & (PF_MEMALLOC | PF_EXITING)))
			filter &= ~SHOW_MEM_FILTER_NODES;
	if (FUNC0() || !(gfp_mask & __GFP_DIRECT_RECLAIM))
		filter &= ~SHOW_MEM_FILTER_NODES;

	FUNC1(filter, nodemask);
}