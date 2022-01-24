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
struct kmem_cache {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 size_t KMALLOC_MAX_CACHE_SIZE ; 
 scalar_t__ FUNC0 (int) ; 
 struct kmem_cache* ZERO_SIZE_PTR ; 
 unsigned int FUNC1 (size_t) ; 
 struct kmem_cache*** kmalloc_caches ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int* size_index ; 
 size_t FUNC3 (size_t) ; 

struct kmem_cache *FUNC4(size_t size, gfp_t flags)
{
	unsigned int index;

	if (size <= 192) {
		if (!size)
			return ZERO_SIZE_PTR;

		index = size_index[FUNC3(size)];
	} else {
		if (FUNC0(size > KMALLOC_MAX_CACHE_SIZE))
			return NULL;
		index = FUNC1(size - 1);
	}

	return kmalloc_caches[FUNC2(flags)][index];
}