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
struct neigh_parms {int dead; int /*<<< orphan*/  rcu_head; scalar_t__ dev; int /*<<< orphan*/  list; } ;
struct neigh_table {int /*<<< orphan*/  lock; struct neigh_parms parms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  neigh_rcu_free_parms ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct neigh_table *tbl, struct neigh_parms *parms)
{
	if (!parms || parms == &tbl->parms)
		return;
	FUNC3(&tbl->lock);
	FUNC2(&parms->list);
	parms->dead = 1;
	FUNC4(&tbl->lock);
	if (parms->dev)
		FUNC1(parms->dev);
	FUNC0(&parms->rcu_head, neigh_rcu_free_parms);
}