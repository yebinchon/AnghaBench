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
struct page {int /*<<< orphan*/  slab_cache; } ;
struct kmem_cache {int dummy; } ;
struct detached_freelist {int cnt; int /*<<< orphan*/ * freelist; int /*<<< orphan*/  s; struct page* page; void* tail; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kmem_cache*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 struct page* FUNC9 (void*) ; 

__attribute__((used)) static inline
int FUNC10(struct kmem_cache *s, size_t size,
			    void **p, struct detached_freelist *df)
{
	size_t first_skipped_index = 0;
	int lookahead = 3;
	void *object;
	struct page *page;

	/* Always re-init detached_freelist */
	df->page = NULL;

	do {
		object = p[--size];
		/* Do we need !ZERO_OR_NULL_PTR(object) here? (for kfree) */
	} while (!object && size);

	if (!object)
		return 0;

	page = FUNC9(object);
	if (!s) {
		/* Handle kalloc'ed objects */
		if (FUNC8(!FUNC2(page))) {
			FUNC0(!FUNC1(page));
			FUNC6(object);
			FUNC3(page, FUNC5(page));
			p[size] = NULL; /* mark object processed */
			return size;
		}
		/* Derive kmem_cache from object */
		df->s = page->slab_cache;
	} else {
		df->s = FUNC4(s, object); /* Support for memcg */
	}

	/* Start new detached freelist */
	df->page = page;
	FUNC7(df->s, object, NULL);
	df->tail = object;
	df->freelist = object;
	p[size] = NULL; /* mark object processed */
	df->cnt = 1;

	while (size) {
		object = p[--size];
		if (!object)
			continue; /* Skip processed objects */

		/* df->page is always set at this point */
		if (df->page == FUNC9(object)) {
			/* Opportunity build freelist */
			FUNC7(df->s, object, df->freelist);
			df->freelist = object;
			df->cnt++;
			p[size] = NULL; /* mark object processed */

			continue;
		}

		/* Limit look ahead search */
		if (!--lookahead)
			break;

		if (!first_skipped_index)
			first_skipped_index = size + 1;
	}

	return first_skipped_index;
}