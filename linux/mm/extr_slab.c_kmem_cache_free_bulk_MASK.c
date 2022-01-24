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
struct kmem_cache {int flags; int /*<<< orphan*/  object_size; } ;

/* Variables and functions */
 int SLAB_DEBUG_OBJECTS ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (struct kmem_cache*,void*,int /*<<< orphan*/ ) ; 
 struct kmem_cache* FUNC1 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct kmem_cache* FUNC6 (void*) ; 

void FUNC7(struct kmem_cache *orig_s, size_t size, void **p)
{
	struct kmem_cache *s;
	size_t i;

	FUNC4();
	for (i = 0; i < size; i++) {
		void *objp = p[i];

		if (!orig_s) /* called via kfree_bulk */
			s = FUNC6(objp);
		else
			s = FUNC1(orig_s, objp);
		if (!s)
			continue;

		FUNC2(objp, s->object_size);
		if (!(s->flags & SLAB_DEBUG_OBJECTS))
			FUNC3(objp, s->object_size);

		FUNC0(s, objp, _RET_IP_);
	}
	FUNC5();

	/* FIXME: add tracing */
}