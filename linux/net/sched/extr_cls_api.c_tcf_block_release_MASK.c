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
struct tcf_block {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_block*,int) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *q, struct tcf_block *block,
			      bool rtnl_held)
{
	if (!FUNC0(block))
		FUNC3(block, rtnl_held);

	if (q) {
		if (rtnl_held)
			FUNC1(q);
		else
			FUNC2(q);
	}
}