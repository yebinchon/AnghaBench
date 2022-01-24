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
struct kmem_cache {int /*<<< orphan*/  flags; int /*<<< orphan*/  object_size; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  gfp_allowed_mask ; 
 void* FUNC0 (struct kmem_cache*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache*) ; 

__attribute__((used)) static inline void FUNC4(struct kmem_cache *s, gfp_t flags,
					size_t size, void **p)
{
	size_t i;

	flags &= gfp_allowed_mask;
	for (i = 0; i < size; i++) {
		p[i] = FUNC0(s, p[i], flags);
		/* As p[i] might get tagged, call kmemleak hook after KASAN. */
		FUNC1(p[i], s->object_size, 1,
					 s->flags, flags);
	}

	if (FUNC2())
		FUNC3(s);
}