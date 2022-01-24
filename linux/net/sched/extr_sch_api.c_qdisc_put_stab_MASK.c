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
struct qdisc_size_table {scalar_t__ refcnt; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qdisc_size_table*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 

void FUNC2(struct qdisc_size_table *tab)
{
	if (!tab)
		return;

	if (--tab->refcnt == 0) {
		FUNC1(&tab->list);
		FUNC0(tab, rcu);
	}
}