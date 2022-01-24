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
struct lru_cache {int flags; scalar_t__ pending_changes; scalar_t__ max_pending_changes; int /*<<< orphan*/  used; int /*<<< orphan*/  locked; int /*<<< orphan*/  misses; int /*<<< orphan*/  in_use; int /*<<< orphan*/  hits; int /*<<< orphan*/  starving; } ;
struct lc_element {scalar_t__ lc_new_number; scalar_t__ lc_number; int refcnt; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int LC_GET_MAY_CHANGE ; 
 unsigned int LC_GET_MAY_USE_UNCOMMITTED ; 
 int LC_STARVING ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lc_element*) ; 
 int /*<<< orphan*/  __LC_DIRTY ; 
 int /*<<< orphan*/  __LC_LOCKED ; 
 int /*<<< orphan*/  __LC_STARVING ; 
 struct lc_element* FUNC3 (struct lru_cache*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 struct lc_element* FUNC6 (struct lru_cache*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct lru_cache*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static struct lc_element *FUNC11(struct lru_cache *lc, unsigned int enr, unsigned int flags)
{
	struct lc_element *e;

	FUNC1();
	if (lc->flags & LC_STARVING) {
		++lc->starving;
		FUNC2(NULL);
	}

	e = FUNC3(lc, enr, 1);
	/* if lc_new_number != lc_number,
	 * this enr is currently being pulled in already,
	 * and will be available once the pending transaction
	 * has been committed. */
	if (e) {
		if (e->lc_new_number != e->lc_number) {
			/* It has been found above, but on the "to_be_changed"
			 * list, not yet committed.  Don't pull it in twice,
			 * wait for the transaction, then try again...
			 */
			if (!(flags & LC_GET_MAY_USE_UNCOMMITTED))
				FUNC2(NULL);
			/* ... unless the caller is aware of the implications,
			 * probably preparing a cumulative transaction. */
			++e->refcnt;
			++lc->hits;
			FUNC2(e);
		}
		/* else: lc_new_number == lc_number; a real hit. */
		++lc->hits;
		if (e->refcnt++ == 0)
			lc->used++;
		FUNC8(&e->list, &lc->in_use); /* Not evictable... */
		FUNC2(e);
	}
	/* e == NULL */

	++lc->misses;
	if (!(flags & LC_GET_MAY_CHANGE))
		FUNC2(NULL);

	/* To avoid races with lc_try_lock(), first, mark us dirty
	 * (using test_and_set_bit, as it implies memory barriers), ... */
	FUNC9(__LC_DIRTY, &lc->flags);

	/* ... only then check if it is locked anyways. If lc_unlock clears
	 * the dirty bit again, that's not a problem, we will come here again.
	 */
	if (FUNC10(__LC_LOCKED, &lc->flags)) {
		++lc->locked;
		FUNC2(NULL);
	}

	/* In case there is nothing available and we can not kick out
	 * the LRU element, we have to wait ...
	 */
	if (!FUNC7(lc)) {
		FUNC4(__LC_STARVING, &lc->flags);
		FUNC2(NULL);
	}

	/* It was not present in the active set.  We are going to recycle an
	 * unused (or even "free") element, but we won't accumulate more than
	 * max_pending_changes changes.  */
	if (lc->pending_changes >= lc->max_pending_changes)
		FUNC2(NULL);

	e = FUNC6(lc, enr);
	FUNC0(!e);

	FUNC5(__LC_STARVING, &lc->flags);
	FUNC0(++e->refcnt != 1);
	lc->used++;
	lc->pending_changes++;

	FUNC2(e);
}