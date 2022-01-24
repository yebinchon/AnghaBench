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
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*) ; 

void FUNC7(struct kmem_cache *cachep, void *objp)
{
	unsigned long flags;
	cachep = FUNC1(cachep, objp);
	if (!cachep)
		return;

	FUNC5(flags);
	FUNC2(objp, cachep->object_size);
	if (!(cachep->flags & SLAB_DEBUG_OBJECTS))
		FUNC3(objp, cachep->object_size);
	FUNC0(cachep, objp, _RET_IP_);
	FUNC4(flags);

	FUNC6(_RET_IP_, objp);
}