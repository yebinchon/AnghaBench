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
struct rcu_segcblist {int /*<<< orphan*/ ** tails; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 size_t RCU_DONE_TAIL ; 
 scalar_t__ FUNC0 (struct rcu_segcblist*) ; 

bool FUNC1(struct rcu_segcblist *rsclp)
{
	return FUNC0(rsclp) &&
	       &rsclp->head != rsclp->tails[RCU_DONE_TAIL];
}