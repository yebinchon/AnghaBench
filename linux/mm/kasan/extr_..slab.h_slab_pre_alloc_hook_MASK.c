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
struct kmem_cache {int flags; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int SLAB_ACCOUNT ; 
 int __GFP_ACCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int gfp_allowed_mask ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 
 struct kmem_cache* FUNC4 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct kmem_cache*,int) ; 

__attribute__((used)) static inline struct kmem_cache *FUNC7(struct kmem_cache *s,
						     gfp_t flags)
{
	flags &= gfp_allowed_mask;

	FUNC0(flags);
	FUNC1(flags);

	FUNC5(FUNC2(flags));

	if (FUNC6(s, flags))
		return NULL;

	if (FUNC3() &&
	    ((flags & __GFP_ACCOUNT) || (s->flags & SLAB_ACCOUNT)))
		return FUNC4(s);

	return s;
}