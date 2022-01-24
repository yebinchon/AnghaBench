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
typedef  int u32 ;
struct tcf_result {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_qstats; int /*<<< orphan*/  cpu_bstats; } ;
struct tcf_gact {int /*<<< orphan*/  tcf_tm; TYPE_1__ common; int /*<<< orphan*/  tcfg_ptype; int /*<<< orphan*/  tcf_action; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TC_ACT_SHOT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int FUNC2 (struct tcf_gact*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct tcf_gact*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct tcf_gact* FUNC7 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb, const struct tc_action *a,
			struct tcf_result *res)
{
	struct tcf_gact *gact = FUNC7(a);
	int action = FUNC0(gact->tcf_action);

#ifdef CONFIG_GACT_PROB
	{
	u32 ptype = READ_ONCE(gact->tcfg_ptype);

	if (ptype)
		action = gact_rand[ptype](gact);
	}
#endif
	FUNC1(FUNC6(gact->common.cpu_bstats), skb);
	if (action == TC_ACT_SHOT)
		FUNC3(FUNC6(gact->common.cpu_qstats));

	FUNC5(&gact->tcf_tm);

	return action;
}