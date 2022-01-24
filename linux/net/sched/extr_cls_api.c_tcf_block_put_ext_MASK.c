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
struct tcf_block_ext_info {int /*<<< orphan*/  binder_type; } ;
struct tcf_block {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_block*,struct Qdisc*,struct tcf_block_ext_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tcf_block*,struct Qdisc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_block*,struct tcf_block_ext_info*) ; 

void FUNC3(struct tcf_block *block, struct Qdisc *q,
		       struct tcf_block_ext_info *ei)
{
	if (!block)
		return;
	FUNC2(block, ei);
	FUNC1(block, q, ei->binder_type);

	FUNC0(block, q, ei, true);
}