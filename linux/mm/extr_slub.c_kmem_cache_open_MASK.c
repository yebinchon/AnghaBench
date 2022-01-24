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
struct kmem_cache {int flags; int remote_node_defrag_ratio; int /*<<< orphan*/  size; scalar_t__ offset; int /*<<< orphan*/  object_size; int /*<<< orphan*/  random; int /*<<< orphan*/  ctor; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  slab_flags_t ;

/* Variables and functions */
 int DEBUG_METADATA_FLAGS ; 
 int EINVAL ; 
 int SLAB_NO_CMPXCHG ; 
 scalar_t__ UP ; 
 int __CMPXCHG_DOUBLE ; 
 scalar_t__ FUNC0 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,int) ; 
 scalar_t__ disable_higher_order_debug ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC10 (struct kmem_cache*,int) ; 
 scalar_t__ slab_state ; 
 scalar_t__ FUNC11 () ; 

__attribute__((used)) static int FUNC12(struct kmem_cache *s, slab_flags_t flags)
{
	s->flags = FUNC8(s->size, flags, s->name, s->ctor);
#ifdef CONFIG_SLAB_FREELIST_HARDENED
	s->random = get_random_long();
#endif

	if (!FUNC1(s, -1))
		goto error;
	if (disable_higher_order_debug) {
		/*
		 * Disable debugging flags that store metadata if the min slab
		 * order increased.
		 */
		if (FUNC3(s->size) > FUNC3(s->object_size)) {
			s->flags &= ~DEBUG_METADATA_FLAGS;
			s->offset = 0;
			if (!FUNC1(s, -1))
				goto error;
		}
	}

#if defined(CONFIG_HAVE_CMPXCHG_DOUBLE) && \
    defined(CONFIG_HAVE_ALIGNED_STRUCT_PAGE)
	if (system_has_cmpxchg_double() && (s->flags & SLAB_NO_CMPXCHG) == 0)
		/* Enable fast mode */
		s->flags |= __CMPXCHG_DOUBLE;
#endif

	/*
	 * The larger the object size is, the more pages we want on the partial
	 * list to avoid pounding the page allocator excessively.
	 */
	FUNC10(s, FUNC5(s->size) / 2);

	FUNC9(s);

#ifdef CONFIG_NUMA
	s->remote_node_defrag_ratio = 1000;
#endif

	/* Initialize the pre-computed randomized freelist if slab is up */
	if (slab_state >= UP) {
		if (FUNC6(s))
			goto error;
	}

	if (!FUNC7(s))
		goto error;

	if (FUNC0(s))
		return 0;

	FUNC2(s);
error:
	return -EINVAL;
}