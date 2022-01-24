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
struct tcf_proto {int dummy; } ;
struct tcf_chain_info {int dummy; } ;
struct tcf_chain {int /*<<< orphan*/  filter_chain_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 struct tcf_proto* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tcf_proto* FUNC3 (struct tcf_chain*,struct tcf_chain_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct tcf_chain*,struct tcf_chain_info*,struct tcf_proto*) ; 
 int /*<<< orphan*/  FUNC5 (struct tcf_proto*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tcf_chain*,struct tcf_proto*) ; 

__attribute__((used)) static struct tcf_proto *FUNC7(struct tcf_chain *chain,
						    struct tcf_proto *tp_new,
						    u32 protocol, u32 prio,
						    bool rtnl_held)
{
	struct tcf_chain_info chain_info;
	struct tcf_proto *tp;
	int err = 0;

	FUNC1(&chain->filter_chain_lock);

	if (FUNC6(chain, tp_new)) {
		FUNC2(&chain->filter_chain_lock);
		FUNC5(tp_new, rtnl_held, false, NULL);
		return FUNC0(-EAGAIN);
	}

	tp = FUNC3(chain, &chain_info,
			       protocol, prio, false);
	if (!tp)
		err = FUNC4(chain, &chain_info, tp_new);
	FUNC2(&chain->filter_chain_lock);

	if (tp) {
		FUNC5(tp_new, rtnl_held, false, NULL);
		tp_new = tp;
	} else if (err) {
		FUNC5(tp_new, rtnl_held, false, NULL);
		tp_new = FUNC0(err);
	}

	return tp_new;
}