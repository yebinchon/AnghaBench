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
struct slob_rcu {int size; int /*<<< orphan*/  head; } ;
struct kmem_cache {int flags; int size; } ;

/* Variables and functions */
 int SLAB_TYPESAFE_BY_RCU ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmem_rcu_free ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC4 (int) ; 

void FUNC5(struct kmem_cache *c, void *b)
{
	FUNC2(b, c->flags);
	if (FUNC4(c->flags & SLAB_TYPESAFE_BY_RCU)) {
		struct slob_rcu *slob_rcu;
		slob_rcu = b + (c->size - sizeof(struct slob_rcu));
		slob_rcu->size = c->size;
		FUNC1(&slob_rcu->head, kmem_rcu_free);
	} else {
		FUNC0(b, c->size);
	}

	FUNC3(_RET_IP_, b);
}