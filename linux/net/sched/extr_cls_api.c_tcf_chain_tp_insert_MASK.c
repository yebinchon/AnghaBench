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
struct tcf_proto {int /*<<< orphan*/  next; } ;
struct tcf_chain_info {scalar_t__* pprev; } ;
struct tcf_chain {scalar_t__ filter_chain; scalar_t__ flushing; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC2 (struct tcf_chain*,struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_chain*,struct tcf_chain_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct tcf_proto*) ; 

__attribute__((used)) static int FUNC5(struct tcf_chain *chain,
			       struct tcf_chain_info *chain_info,
			       struct tcf_proto *tp)
{
	if (chain->flushing)
		return -EAGAIN;

	if (*chain_info->pprev == chain->filter_chain)
		FUNC2(chain, tp);
	FUNC4(tp);
	FUNC0(tp->next, FUNC3(chain, chain_info));
	FUNC1(*chain_info->pprev, tp);

	return 0;
}