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
struct lru_cache {int /*<<< orphan*/  flags; int /*<<< orphan*/  used; int /*<<< orphan*/  lru; } ;
struct lc_element {scalar_t__ refcnt; scalar_t__ lc_number; scalar_t__ lc_new_number; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lru_cache*,struct lc_element*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  __LC_STARVING ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

unsigned int FUNC6(struct lru_cache *lc, struct lc_element *e)
{
	FUNC1();
	FUNC2(lc, e);
	FUNC0(e->refcnt == 0);
	FUNC0(e->lc_number != e->lc_new_number);
	if (--e->refcnt == 0) {
		/* move it to the front of LRU. */
		FUNC5(&e->list, &lc->lru);
		lc->used--;
		FUNC4(__LC_STARVING, &lc->flags);
	}
	FUNC3(e->refcnt);
}