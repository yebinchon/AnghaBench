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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 void* FUNC0 (struct kmem_cache*,int /*<<< orphan*/ ,int,unsigned long,struct kmem_cache_cpu*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 struct kmem_cache_cpu* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC4(struct kmem_cache *s, gfp_t gfpflags, int node,
			  unsigned long addr, struct kmem_cache_cpu *c)
{
	void *p;
	unsigned long flags;

	FUNC2(flags);
#ifdef CONFIG_PREEMPT
	/*
	 * We may have been preempted and rescheduled on a different
	 * cpu before disabling interrupts. Need to reload cpu area
	 * pointer.
	 */
	c = this_cpu_ptr(s->cpu_slab);
#endif

	p = FUNC0(s, gfpflags, node, addr, c);
	FUNC1(flags);
	return p;
}