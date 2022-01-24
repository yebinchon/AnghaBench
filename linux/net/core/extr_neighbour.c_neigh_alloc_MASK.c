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
struct net_device {scalar_t__ neigh_priv_len; } ;
struct TYPE_2__ {int /*<<< orphan*/  hh_lock; } ;
struct neighbour {unsigned long updated; unsigned long used; int dead; int /*<<< orphan*/  gc_list; int /*<<< orphan*/  refcnt; struct neigh_table* tbl; int /*<<< orphan*/  timer; int /*<<< orphan*/  parms; TYPE_1__ hh; int /*<<< orphan*/  output; int /*<<< orphan*/  nud_state; int /*<<< orphan*/  ha_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  arp_queue; } ;
struct neigh_table {int gc_thresh3; int gc_thresh2; int /*<<< orphan*/  gc_entries; int /*<<< orphan*/  entries; int /*<<< orphan*/  parms; scalar_t__ entry_size; int /*<<< orphan*/  id; scalar_t__ last_flush; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct neigh_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NUD_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  allocs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 struct neighbour* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  neigh_blackhole ; 
 int /*<<< orphan*/  FUNC7 (struct neigh_table*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  neigh_timer_handler ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  table_fulls ; 
 scalar_t__ FUNC13 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct neighbour *FUNC15(struct neigh_table *tbl,
				     struct net_device *dev,
				     bool exempt_from_gc)
{
	struct neighbour *n = NULL;
	unsigned long now = jiffies;
	int entries;

	if (exempt_from_gc)
		goto do_alloc;

	entries = FUNC5(&tbl->gc_entries) - 1;
	if (entries >= tbl->gc_thresh3 ||
	    (entries >= tbl->gc_thresh2 &&
	     FUNC13(now, tbl->last_flush + 5 * HZ))) {
		if (!FUNC7(tbl) &&
		    entries >= tbl->gc_thresh3) {
			FUNC9("%s: neighbor table overflow!\n",
					     tbl->id);
			FUNC1(tbl, table_fulls);
			goto out_entries;
		}
	}

do_alloc:
	n = FUNC6(tbl->entry_size + dev->neigh_priv_len, GFP_ATOMIC);
	if (!n)
		goto out_entries;

	FUNC2(&n->arp_queue);
	FUNC11(&n->lock);
	FUNC12(&n->ha_lock);
	n->updated	  = n->used = now;
	n->nud_state	  = NUD_NONE;
	n->output	  = neigh_blackhole;
	FUNC12(&n->hh.hh_lock);
	n->parms	  = FUNC8(&tbl->parms);
	FUNC14(&n->timer, neigh_timer_handler, 0);

	FUNC1(tbl, allocs);
	n->tbl		  = tbl;
	FUNC10(&n->refcnt, 1);
	n->dead		  = 1;
	FUNC0(&n->gc_list);

	FUNC4(&tbl->entries);
out:
	return n;

out_entries:
	if (!exempt_from_gc)
		FUNC3(&tbl->gc_entries);
	goto out;
}