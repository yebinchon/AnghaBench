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
struct rt_mutex_waiter {int /*<<< orphan*/ * task; int /*<<< orphan*/  tree_entry; int /*<<< orphan*/  pi_tree_entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_mutex_waiter*) ; 

void FUNC2(struct rt_mutex_waiter *waiter)
{
	FUNC1(waiter);
	FUNC0(&waiter->pi_tree_entry);
	FUNC0(&waiter->tree_entry);
	waiter->task = NULL;
}