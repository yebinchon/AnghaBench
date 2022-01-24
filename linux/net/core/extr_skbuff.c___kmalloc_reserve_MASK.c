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
 int __GFP_NOMEMALLOC ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t,int,int) ; 

__attribute__((used)) static void *FUNC2(size_t size, gfp_t flags, int node,
			       unsigned long ip, bool *pfmemalloc)
{
	void *obj;
	bool ret_pfmemalloc = false;

	/*
	 * Try a regular allocation, when that fails and we're not entitled
	 * to the reserves, fail.
	 */
	obj = FUNC1(size,
					flags | __GFP_NOMEMALLOC | __GFP_NOWARN,
					node);
	if (obj || !(FUNC0(flags)))
		goto out;

	/* Try again but now we are using pfmemalloc reserves */
	ret_pfmemalloc = true;
	obj = FUNC1(size, flags, node);

out:
	if (pfmemalloc)
		*pfmemalloc = ret_pfmemalloc;

	return obj;
}