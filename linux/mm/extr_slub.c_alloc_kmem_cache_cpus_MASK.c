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
struct kmem_cache_cpu {int dummy; } ;
struct kmem_cache {int /*<<< orphan*/  cpu_slab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int KMALLOC_SHIFT_HIGH ; 
 int PERCPU_DYNAMIC_EARLY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*) ; 

__attribute__((used)) static inline int FUNC3(struct kmem_cache *s)
{
	FUNC0(PERCPU_DYNAMIC_EARLY_SIZE <
			KMALLOC_SHIFT_HIGH * sizeof(struct kmem_cache_cpu));

	/*
	 * Must align to double word boundary for the double cmpxchg
	 * instructions to work; see __pcpu_double_call_return_bool().
	 */
	s->cpu_slab = FUNC1(sizeof(struct kmem_cache_cpu),
				     2 * sizeof(void *));

	if (!s->cpu_slab)
		return 0;

	FUNC2(s);

	return 1;
}