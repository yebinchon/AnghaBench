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
struct page {void* freelist; unsigned long counters; int /*<<< orphan*/  inuse; scalar_t__ frozen; } ;
struct kmem_cache_node {scalar_t__ nr_partial; int /*<<< orphan*/  list_lock; } ;
struct kmem_cache_cpu {int /*<<< orphan*/ * freelist; int /*<<< orphan*/ * page; } ;
struct kmem_cache {scalar_t__ min_partial; } ;
typedef  enum slab_modes { ____Placeholder_slab_modes } slab_modes ;

/* Variables and functions */
 int DEACTIVATE_EMPTY ; 
 int DEACTIVATE_FULL ; 
 int DEACTIVATE_REMOTE_FREES ; 
 int DEACTIVATE_TO_HEAD ; 
 int DEACTIVATE_TO_TAIL ; 
 int FREE_SLAB ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,struct page*,void*,unsigned long,void*,unsigned long,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmem_cache*,struct kmem_cache_node*,struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmem_cache_node*,struct page*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,struct page*) ; 
 void* FUNC5 (struct kmem_cache*,void*) ; 
 struct kmem_cache_node* FUNC6 (struct kmem_cache*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct kmem_cache*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct kmem_cache*,struct kmem_cache_node*,struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct kmem_cache_node*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct kmem_cache*,void*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct kmem_cache*,int) ; 

__attribute__((used)) static void FUNC15(struct kmem_cache *s, struct page *page,
				void *freelist, struct kmem_cache_cpu *c)
{
	enum slab_modes { M_NONE, M_PARTIAL, M_FULL, M_FREE };
	struct kmem_cache_node *n = FUNC6(s, FUNC8(page));
	int lock = 0;
	enum slab_modes l = M_NONE, m = M_NONE;
	void *nextfree;
	int tail = DEACTIVATE_TO_HEAD;
	struct page new;
	struct page old;

	if (page->freelist) {
		FUNC14(s, DEACTIVATE_REMOTE_FREES);
		tail = DEACTIVATE_TO_TAIL;
	}

	/*
	 * Stage one: Free all available per cpu objects back
	 * to the page freelist while it is still frozen. Leave the
	 * last one.
	 *
	 * There is no need to take the list->lock because the page
	 * is still frozen.
	 */
	while (freelist && (nextfree = FUNC5(s, freelist))) {
		void *prior;
		unsigned long counters;

		do {
			prior = page->freelist;
			counters = page->counters;
			FUNC11(s, freelist, prior);
			new.counters = counters;
			new.inuse--;
			FUNC0(!new.frozen);

		} while (!FUNC1(s, page,
			prior, counters,
			freelist, new.counters,
			"drain percpu freelist"));

		freelist = nextfree;
	}

	/*
	 * Stage two: Ensure that the page is unfrozen while the
	 * list presence reflects the actual number of objects
	 * during unfreeze.
	 *
	 * We setup the list membership and then perform a cmpxchg
	 * with the count. If there is a mismatch then the page
	 * is not unfrozen but the page is on the wrong list.
	 *
	 * Then we restart the process which may have to remove
	 * the page from the list that we just put it on again
	 * because the number of objects in the slab may have
	 * changed.
	 */
redo:

	old.freelist = page->freelist;
	old.counters = page->counters;
	FUNC0(!old.frozen);

	/* Determine target state of the slab */
	new.counters = old.counters;
	if (freelist) {
		new.inuse--;
		FUNC11(s, freelist, old.freelist);
		new.freelist = freelist;
	} else
		new.freelist = old.freelist;

	new.frozen = 0;

	if (!new.inuse && n->nr_partial >= s->min_partial)
		m = M_FREE;
	else if (new.freelist) {
		m = M_PARTIAL;
		if (!lock) {
			lock = 1;
			/*
			 * Taking the spinlock removes the possibility
			 * that acquire_slab() will see a slab page that
			 * is frozen
			 */
			FUNC12(&n->list_lock);
		}
	} else {
		m = M_FULL;
		if (FUNC7(s) && !lock) {
			lock = 1;
			/*
			 * This also ensures that the scanning of full
			 * slabs from diagnostic functions will not see
			 * any frozen slabs.
			 */
			FUNC12(&n->list_lock);
		}
	}

	if (l != m) {
		if (l == M_PARTIAL)
			FUNC10(n, page);
		else if (l == M_FULL)
			FUNC9(s, n, page);

		if (m == M_PARTIAL)
			FUNC3(n, page, tail);
		else if (m == M_FULL)
			FUNC2(s, n, page);
	}

	l = m;
	if (!FUNC1(s, page,
				old.freelist, old.counters,
				new.freelist, new.counters,
				"unfreezing slab"))
		goto redo;

	if (lock)
		FUNC13(&n->list_lock);

	if (m == M_PARTIAL)
		FUNC14(s, tail);
	else if (m == M_FULL)
		FUNC14(s, DEACTIVATE_FULL);
	else if (m == M_FREE) {
		FUNC14(s, DEACTIVATE_EMPTY);
		FUNC4(s, page);
		FUNC14(s, FREE_SLAB);
	}

	c->page = NULL;
	c->freelist = NULL;
}