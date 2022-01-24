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
struct rcu_segcblist {scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct rcu_segcblist*) ; 
 int FUNC2 (struct rcu_segcblist*) ; 
 int FUNC3 (struct rcu_segcblist*) ; 

void FUNC4(struct rcu_segcblist *rsclp)
{
	FUNC0(!FUNC1(rsclp));
	FUNC0(FUNC2(rsclp));
	FUNC0(FUNC3(rsclp));
	rsclp->enabled = 0;
}