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
struct lru_cache {int /*<<< orphan*/  free; } ;
struct lc_element {int /*<<< orphan*/  list; int /*<<< orphan*/  colision; int /*<<< orphan*/  lc_new_number; int /*<<< orphan*/  lc_number; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LC_FREE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct lru_cache*,struct lc_element*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC6(struct lru_cache *lc, struct lc_element *e)
{
	FUNC1();
	FUNC2(lc, e);
	FUNC0(e->refcnt);

	e->lc_number = e->lc_new_number = LC_FREE;
	FUNC4(&e->colision);
	FUNC5(&e->list, &lc->free);
	FUNC3();
}