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
struct kmem_cache {int /*<<< orphan*/  ctor; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct kmem_cache*,int /*<<< orphan*/ ) ; 

void *FUNC2(gfp_t gfp_mask, void *pool_data)
{
	struct kmem_cache *mem = pool_data;
	FUNC0(mem->ctor);
	return FUNC1(mem, gfp_mask);
}