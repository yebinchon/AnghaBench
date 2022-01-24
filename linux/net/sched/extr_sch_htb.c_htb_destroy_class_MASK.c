#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  q; } ;
struct htb_class {int /*<<< orphan*/  block; int /*<<< orphan*/  rate_est; TYPE_1__ leaf; int /*<<< orphan*/  level; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct htb_class*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch, struct htb_class *cl)
{
	if (!cl->level) {
		FUNC0(!cl->leaf.q);
		FUNC3(cl->leaf.q);
	}
	FUNC1(&cl->rate_est);
	FUNC4(cl->block);
	FUNC2(cl);
}