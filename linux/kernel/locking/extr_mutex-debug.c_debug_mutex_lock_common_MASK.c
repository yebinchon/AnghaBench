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
struct mutex {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MUTEX_DEBUG_INIT ; 
 int /*<<< orphan*/  FUNC1 (struct mutex_waiter*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct mutex *lock, struct mutex_waiter *waiter)
{
	FUNC1(waiter, MUTEX_DEBUG_INIT, sizeof(*waiter));
	waiter->magic = waiter;
	FUNC0(&waiter->list);
}