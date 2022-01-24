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
struct kmem_cache {size_t object_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void const* ZERO_SIZE_PTR ; 
 scalar_t__ FUNC1 (int) ; 
 struct kmem_cache* FUNC2 (void const*) ; 

size_t FUNC3(const void *objp)
{
	struct kmem_cache *c;
	size_t size;

	FUNC0(!objp);
	if (FUNC1(objp == ZERO_SIZE_PTR))
		return 0;

	c = FUNC2(objp);
	size = c ? c->object_size : 0;

	return size;
}