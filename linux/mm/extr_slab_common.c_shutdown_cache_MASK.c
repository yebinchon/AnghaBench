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
struct kmem_cache {int flags; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int EBUSY ; 
 int SLAB_TYPESAFE_BY_RCU ; 
 scalar_t__ FUNC0 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  slab_caches_to_rcu_destroy ; 
 int /*<<< orphan*/  slab_caches_to_rcu_destroy_work ; 
 int /*<<< orphan*/  FUNC6 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct kmem_cache*) ; 

__attribute__((used)) static int FUNC9(struct kmem_cache *s)
{
	/* free asan quarantined objects */
	FUNC1(s);

	if (FUNC0(s) != 0)
		return -EBUSY;

	FUNC4(s);
	FUNC3(&s->list);

	if (s->flags & SLAB_TYPESAFE_BY_RCU) {
#ifdef SLAB_SUPPORTS_SYSFS
		sysfs_slab_unlink(s);
#endif
		FUNC2(&s->list, &slab_caches_to_rcu_destroy);
		FUNC5(&slab_caches_to_rcu_destroy_work);
	} else {
#ifdef SLAB_SUPPORTS_SYSFS
		sysfs_slab_unlink(s);
		sysfs_slab_release(s);
#else
		FUNC6(s);
#endif
	}

	return 0;
}