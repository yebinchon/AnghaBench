#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct neighbour {int nud_state; int flags; TYPE_1__* tbl; int /*<<< orphan*/  lock; int /*<<< orphan*/  gc_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  gc_entries; int /*<<< orphan*/  gc_list; } ;

/* Variables and functions */
 int NTF_EXT_LEARNED ; 
 int NUD_PERMANENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct neighbour *n)
{
	bool on_gc_list, exempt_from_gc;

	FUNC6(&n->tbl->lock);
	FUNC5(&n->lock);

	/* remove from the gc list if new state is permanent or if neighbor
	 * is externally learned; otherwise entry should be on the gc list
	 */
	exempt_from_gc = n->nud_state & NUD_PERMANENT ||
			 n->flags & NTF_EXT_LEARNED;
	on_gc_list = !FUNC4(&n->gc_list);

	if (exempt_from_gc && on_gc_list) {
		FUNC3(&n->gc_list);
		FUNC0(&n->tbl->gc_entries);
	} else if (!exempt_from_gc && !on_gc_list) {
		/* add entries to the tail; cleaning removes from the front */
		FUNC2(&n->gc_list, &n->tbl->gc_list);
		FUNC1(&n->tbl->gc_entries);
	}

	FUNC7(&n->lock);
	FUNC8(&n->tbl->lock);
}