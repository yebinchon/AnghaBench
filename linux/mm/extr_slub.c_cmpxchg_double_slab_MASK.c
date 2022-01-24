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
struct page {void* freelist; unsigned long counters; } ;
struct kmem_cache {int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMPXCHG_DOUBLE_FAIL ; 
 int __CMPXCHG_DOUBLE ; 
 scalar_t__ FUNC0 (void**,unsigned long*,void*,unsigned long,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct kmem_cache*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC8(struct kmem_cache *s, struct page *page,
		void *freelist_old, unsigned long counters_old,
		void *freelist_new, unsigned long counters_new,
		const char *n)
{
#if defined(CONFIG_HAVE_CMPXCHG_DOUBLE) && \
    defined(CONFIG_HAVE_ALIGNED_STRUCT_PAGE)
	if (s->flags & __CMPXCHG_DOUBLE) {
		if (cmpxchg_double(&page->freelist, &page->counters,
				   freelist_old, counters_old,
				   freelist_new, counters_new))
			return true;
	} else
#endif
	{
		unsigned long flags;

		FUNC3(flags);
		FUNC5(page);
		if (page->freelist == freelist_old &&
					page->counters == counters_old) {
			page->freelist = freelist_new;
			page->counters = counters_new;
			FUNC6(page);
			FUNC2(flags);
			return true;
		}
		FUNC6(page);
		FUNC2(flags);
	}

	FUNC1();
	FUNC7(s, CMPXCHG_DOUBLE_FAIL);

#ifdef SLUB_DEBUG_CMPXCHG
	pr_info("%s %s: cmpxchg double redo ", n, s->name);
#endif

	return false;
}