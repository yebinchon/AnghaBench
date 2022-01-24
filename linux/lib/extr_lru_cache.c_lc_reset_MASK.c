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
struct lru_cache {void* lc_slot; int nr_elements; int element_size; int /*<<< orphan*/  free; int /*<<< orphan*/  element_off; struct lc_element** lc_element; scalar_t__ flags; scalar_t__ pending_changes; scalar_t__ changed; scalar_t__ locked; scalar_t__ starving; scalar_t__ misses; scalar_t__ hits; scalar_t__ used; int /*<<< orphan*/  to_be_changed; int /*<<< orphan*/  lru; int /*<<< orphan*/  in_use; } ;
struct lc_element {unsigned int lc_index; int /*<<< orphan*/  list; void* lc_new_number; void* lc_number; } ;
struct hlist_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* LC_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct lru_cache *lc)
{
	unsigned i;

	FUNC0(&lc->in_use);
	FUNC0(&lc->lru);
	FUNC0(&lc->free);
	FUNC0(&lc->to_be_changed);
	lc->used = 0;
	lc->hits = 0;
	lc->misses = 0;
	lc->starving = 0;
	lc->locked = 0;
	lc->changed = 0;
	lc->pending_changes = 0;
	lc->flags = 0;
	FUNC2(lc->lc_slot, 0, sizeof(struct hlist_head) * lc->nr_elements);

	for (i = 0; i < lc->nr_elements; i++) {
		struct lc_element *e = lc->lc_element[i];
		void *p = e;
		p -= lc->element_off;
		FUNC2(p, 0, lc->element_size);
		/* re-init it */
		e->lc_index = i;
		e->lc_number = LC_FREE;
		e->lc_new_number = LC_FREE;
		FUNC1(&e->list, &lc->free);
	}
}