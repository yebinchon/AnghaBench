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
struct tcf_chain {int /*<<< orphan*/  index; int /*<<< orphan*/  list; struct tcf_block* block; } ;
struct TYPE_2__ {int /*<<< orphan*/ * chain; } ;
struct tcf_block {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  chain_list; TYPE_1__ chain0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tcf_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(struct tcf_chain *chain)
{
	struct tcf_block *block = chain->block;

	FUNC0(block);

	FUNC1(&chain->list);
	if (!chain->index)
		block->chain0.chain = NULL;

	if (FUNC2(&block->chain_list) &&
	    FUNC3(&block->refcnt) == 0)
		return true;

	return false;
}