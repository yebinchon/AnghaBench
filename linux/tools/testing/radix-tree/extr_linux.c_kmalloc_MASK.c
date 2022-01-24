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
typedef  int gfp_t ;

/* Variables and functions */
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_ZERO ; 
 scalar_t__ kmalloc_verbose ; 
 void* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  nr_allocated ; 
 int /*<<< orphan*/  FUNC2 (char*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void *FUNC4(size_t size, gfp_t gfp)
{
	void *ret;

	if (!(gfp & __GFP_DIRECT_RECLAIM))
		return NULL;

	ret = FUNC0(size);
	FUNC3(&nr_allocated);
	if (kmalloc_verbose)
		FUNC2("Allocating %p from malloc\n", ret);
	if (gfp & __GFP_ZERO)
		FUNC1(ret, 0, size);
	return ret;
}