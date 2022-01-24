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
struct list_head {int dummy; } ;
struct lru_cache {int nr_elements; struct list_head lru; struct list_head free; } ;
struct lc_element {unsigned int lc_number; unsigned int lc_new_number; scalar_t__ refcnt; int /*<<< orphan*/  list; int /*<<< orphan*/  colision; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int LC_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct lc_element* FUNC3 (struct lru_cache*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lru_cache*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct list_head*) ; 

void FUNC6(struct lru_cache *lc, unsigned int enr, int index)
{
	struct lc_element *e;
	struct list_head *lh;

	if (index < 0 || index >= lc->nr_elements)
		return;

	e = FUNC3(lc, index);
	FUNC0(e->lc_number != e->lc_new_number);
	FUNC0(e->refcnt != 0);

	e->lc_number = e->lc_new_number = enr;
	FUNC2(&e->colision);
	if (enr == LC_FREE)
		lh = &lc->free;
	else {
		FUNC1(&e->colision, FUNC4(lc, enr));
		lh = &lc->lru;
	}
	FUNC5(&e->list, lh);
}