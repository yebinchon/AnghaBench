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
struct rcu_segcblist {int enabled; scalar_t__ len_lazy; int /*<<< orphan*/ * head; int /*<<< orphan*/ *** tails; int /*<<< orphan*/ *** gp_seq; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ***) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int RCU_CBLIST_NSEGS ; 
 scalar_t__ RCU_NEXT_TAIL ; 
 int /*<<< orphan*/  FUNC2 (struct rcu_segcblist*,int /*<<< orphan*/ ) ; 

void FUNC3(struct rcu_segcblist *rsclp)
{
	int i;

	FUNC1(RCU_NEXT_TAIL + 1 != FUNC0(rsclp->gp_seq));
	FUNC1(FUNC0(rsclp->tails) != FUNC0(rsclp->gp_seq));
	rsclp->head = NULL;
	for (i = 0; i < RCU_CBLIST_NSEGS; i++)
		rsclp->tails[i] = &rsclp->head;
	FUNC2(rsclp, 0);
	rsclp->len_lazy = 0;
	rsclp->enabled = 1;
}