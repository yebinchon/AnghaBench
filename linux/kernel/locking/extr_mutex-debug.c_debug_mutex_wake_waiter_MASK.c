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
struct mutex_waiter {int /*<<< orphan*/  list; struct mutex_waiter* magic; } ;
struct mutex {int /*<<< orphan*/  wait_list; int /*<<< orphan*/  wait_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mutex *lock, struct mutex_waiter *waiter)
{
	FUNC2(&lock->wait_lock);
	FUNC0(FUNC1(&lock->wait_list));
	FUNC0(waiter->magic != waiter);
	FUNC0(FUNC1(&waiter->list));
}