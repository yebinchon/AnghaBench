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
struct kmem_cache_cpu {int /*<<< orphan*/  tid; void* freelist; } ;
struct kmem_cache {int /*<<< orphan*/  object_size; int /*<<< orphan*/  cpu_slab; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 void* FUNC0 (struct kmem_cache*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct kmem_cache_cpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int,void**) ; 
 void* FUNC2 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kmem_cache*,int /*<<< orphan*/ ,int,void**) ; 
 struct kmem_cache* FUNC9 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct kmem_cache*) ; 
 struct kmem_cache_cpu* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int) ; 

int FUNC13(struct kmem_cache *s, gfp_t flags, size_t size,
			  void **p)
{
	struct kmem_cache_cpu *c;
	int i;

	/* memcg and kmem_cache debug support */
	s = FUNC9(s, flags);
	if (FUNC12(!s))
		return false;
	/*
	 * Drain objects in the per cpu slab, while disabling local
	 * IRQs, which protects against PREEMPT and interrupts
	 * handlers invoking normal fastpath.
	 */
	FUNC3();
	c = FUNC11(s->cpu_slab);

	for (i = 0; i < size; i++) {
		void *object = c->freelist;

		if (FUNC12(!object)) {
			/*
			 * Invoking slow path likely have side-effect
			 * of re-populating per CPU c->freelist
			 */
			p[i] = FUNC0(s, flags, NUMA_NO_NODE,
					    _RET_IP_, c);
			if (FUNC12(!p[i]))
				goto error;

			c = FUNC11(s->cpu_slab);
			FUNC5(s, p[i]);

			continue; /* goto for-loop */
		}
		c->freelist = FUNC2(s, object);
		p[i] = object;
		FUNC5(s, p[i]);
	}
	c->tid = FUNC7(c->tid);
	FUNC4();

	/* Clear memory outside IRQ disabled fastpath loop */
	if (FUNC12(FUNC10(flags, s))) {
		int j;

		for (j = 0; j < i; j++)
			FUNC6(p[j], 0, s->object_size);
	}

	/* memcg and kmem_cache debug support */
	FUNC8(s, flags, size, p);
	return i;
error:
	FUNC4();
	FUNC8(s, flags, i, p);
	FUNC1(s, i, p);
	return 0;
}