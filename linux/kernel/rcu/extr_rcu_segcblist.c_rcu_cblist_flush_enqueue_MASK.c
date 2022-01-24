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
struct rcu_head {struct rcu_head* next; } ;
struct rcu_cblist {scalar_t__ len_lazy; int /*<<< orphan*/  len; struct rcu_head** tail; struct rcu_head* head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_cblist*) ; 

void FUNC2(struct rcu_cblist *drclp,
			      struct rcu_cblist *srclp,
			      struct rcu_head *rhp)
{
	drclp->head = srclp->head;
	if (drclp->head)
		drclp->tail = srclp->tail;
	else
		drclp->tail = &drclp->head;
	drclp->len = srclp->len;
	drclp->len_lazy = srclp->len_lazy;
	if (!rhp) {
		FUNC1(srclp);
	} else {
		rhp->next = NULL;
		srclp->head = rhp;
		srclp->tail = &rhp->next;
		FUNC0(srclp->len, 1);
		srclp->len_lazy = 0;
	}
}