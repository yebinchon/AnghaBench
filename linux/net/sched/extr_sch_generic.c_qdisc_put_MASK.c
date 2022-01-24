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
struct Qdisc {int flags; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int TCQ_F_BUILTIN ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct Qdisc *qdisc)
{
	if (!qdisc)
		return;

	if (qdisc->flags & TCQ_F_BUILTIN ||
	    !FUNC1(&qdisc->refcnt))
		return;

	FUNC0(qdisc);
}