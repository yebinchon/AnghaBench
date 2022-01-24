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
struct rcu_segcblist {struct rcu_head*** tails; } ;
struct rcu_head {int dummy; } ;

/* Variables and functions */
 size_t RCU_DONE_TAIL ; 
 scalar_t__ FUNC0 (struct rcu_segcblist*) ; 

struct rcu_head *FUNC1(struct rcu_segcblist *rsclp)
{
	if (FUNC0(rsclp))
		return *rsclp->tails[RCU_DONE_TAIL];
	return NULL;
}