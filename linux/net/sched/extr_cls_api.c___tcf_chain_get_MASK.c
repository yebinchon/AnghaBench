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
typedef  int /*<<< orphan*/  u32 ;
struct tcf_chain {int action_refcnt; int refcnt; } ;
struct tcf_block {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int NLM_F_CREATE ; 
 int NLM_F_EXCL ; 
 int /*<<< orphan*/  RTM_NEWCHAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_chain*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 struct tcf_chain* FUNC3 (struct tcf_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_chain*) ; 
 struct tcf_chain* FUNC5 (struct tcf_block*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct tcf_chain *FUNC6(struct tcf_block *block,
					 u32 chain_index, bool create,
					 bool by_act)
{
	struct tcf_chain *chain = NULL;
	bool is_first_reference;

	FUNC0(&block->lock);
	chain = FUNC5(block, chain_index);
	if (chain) {
		FUNC4(chain);
	} else {
		if (!create)
			goto errout;
		chain = FUNC3(block, chain_index);
		if (!chain)
			goto errout;
	}

	if (by_act)
		++chain->action_refcnt;
	is_first_reference = chain->refcnt - chain->action_refcnt == 1;
	FUNC1(&block->lock);

	/* Send notification only in case we got the first
	 * non-action reference. Until then, the chain acts only as
	 * a placeholder for actions pointing to it and user ought
	 * not know about them.
	 */
	if (is_first_reference && !by_act)
		FUNC2(chain, NULL, 0, NLM_F_CREATE | NLM_F_EXCL,
				RTM_NEWCHAIN, false);

	return chain;

errout:
	FUNC1(&block->lock);
	return chain;
}