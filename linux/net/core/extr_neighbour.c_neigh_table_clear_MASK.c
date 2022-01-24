#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct neigh_table {int /*<<< orphan*/ * stats; int /*<<< orphan*/  id; int /*<<< orphan*/ * phash_buckets; int /*<<< orphan*/ * nht; int /*<<< orphan*/  entries; int /*<<< orphan*/  proxy_queue; int /*<<< orphan*/  proxy_timer; int /*<<< orphan*/  gc_work; } ;
struct TYPE_4__ {int /*<<< orphan*/  proc_net_stat; } ;
struct TYPE_3__ {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ init_net ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  neigh_hash_free_rcu ; 
 int /*<<< orphan*/  FUNC6 (struct neigh_table*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** neigh_tables ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(int index, struct neigh_table *tbl)
{
	neigh_tables[index] = NULL;
	/* It is not clean... Fix it to unload IPv6 module safely */
	FUNC2(&tbl->gc_work);
	FUNC3(&tbl->proxy_timer);
	FUNC7(&tbl->proxy_queue);
	FUNC6(tbl, NULL);
	if (FUNC0(&tbl->entries))
		FUNC8("neighbour leakage\n");

	FUNC1(&FUNC9(tbl->nht, 1)->rcu,
		 neigh_hash_free_rcu);
	tbl->nht = NULL;

	FUNC5(tbl->phash_buckets);
	tbl->phash_buckets = NULL;

	FUNC10(tbl->id, init_net.proc_net_stat);

	FUNC4(tbl->stats);
	tbl->stats = NULL;

	return 0;
}