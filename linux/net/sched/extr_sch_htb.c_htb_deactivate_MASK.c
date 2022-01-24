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
struct htb_sched {int dummy; } ;
struct htb_class {scalar_t__ prio_activity; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct htb_sched*,struct htb_class*) ; 

__attribute__((used)) static inline void FUNC2(struct htb_sched *q, struct htb_class *cl)
{
	FUNC0(!cl->prio_activity);

	FUNC1(q, cl);
	cl->prio_activity = 0;
}