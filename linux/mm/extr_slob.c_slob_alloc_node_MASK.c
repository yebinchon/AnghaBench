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
struct kmem_cache {int size; int /*<<< orphan*/  flags; int /*<<< orphan*/  (* ctor ) (void*) ;int /*<<< orphan*/  object_size; int /*<<< orphan*/  align; } ;
typedef  int gfp_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int SLOB_UNIT ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int __GFP_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int gfp_allowed_mask ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int,int /*<<< orphan*/ ,int) ; 
 void* FUNC6 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void *FUNC10(struct kmem_cache *c, gfp_t flags, int node)
{
	void *b;

	flags &= gfp_allowed_mask;

	FUNC2(flags);
	FUNC3(flags);

	if (c->size < PAGE_SIZE) {
		b = FUNC6(c->size, flags, c->align, node, 0);
		FUNC9(_RET_IP_, b, c->object_size,
					    FUNC0(c->size) * SLOB_UNIT,
					    flags, node);
	} else {
		b = FUNC7(flags, FUNC4(c->size), node);
		FUNC9(_RET_IP_, b, c->object_size,
					    PAGE_SIZE << FUNC4(c->size),
					    flags, node);
	}

	if (b && c->ctor) {
		FUNC1(flags & __GFP_ZERO);
		c->ctor(b);
	}

	FUNC5(b, c->size, 1, c->flags, flags);
	return b;
}