#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct xt_action_param {TYPE_4__* target; int /*<<< orphan*/  targinfo; struct nf_hook_state* state; } ;
struct tcf_result {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  drops; } ;
struct tcf_ipt {int /*<<< orphan*/  tcf_lock; TYPE_5__ tcf_qstats; TYPE_3__* tcfi_t; int /*<<< orphan*/  tcf_bstats; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcfi_hook; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  dev; } ;
struct nf_hook_state {int /*<<< orphan*/  pf; int /*<<< orphan*/  hook; int /*<<< orphan*/  in; int /*<<< orphan*/  net; } ;
struct TYPE_9__ {int (* target ) (struct sk_buff*,struct xt_action_param*) ;} ;
struct TYPE_6__ {TYPE_4__* target; } ;
struct TYPE_7__ {TYPE_1__ kernel; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NFPROTO_IPV4 ; 
#define  NF_ACCEPT 130 
#define  NF_DROP 129 
 int TC_ACT_OK ; 
 int TC_ACT_PIPE ; 
 int TC_ACT_SHOT ; 
 int TC_ACT_UNSPEC ; 
#define  XT_CONTINUE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sk_buff*,struct xt_action_param*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct tcf_ipt* FUNC8 (struct tc_action const*) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb, const struct tc_action *a,
		       struct tcf_result *res)
{
	int ret = 0, result = 0;
	struct tcf_ipt *ipt = FUNC8(a);
	struct xt_action_param par;
	struct nf_hook_state state = {
		.net	= FUNC1(skb->dev),
		.in	= skb->dev,
		.hook	= ipt->tcfi_hook,
		.pf	= NFPROTO_IPV4,
	};

	if (FUNC3(skb, GFP_ATOMIC))
		return TC_ACT_UNSPEC;

	FUNC4(&ipt->tcf_lock);

	FUNC7(&ipt->tcf_tm);
	FUNC0(&ipt->tcf_bstats, skb);

	/* yes, we have to worry about both in and out dev
	 * worry later - danger - this API seems to have changed
	 * from earlier kernels
	 */
	par.state    = &state;
	par.target   = ipt->tcfi_t->u.kernel.target;
	par.targinfo = ipt->tcfi_t->data;
	ret = par.target->target(skb, &par);

	switch (ret) {
	case NF_ACCEPT:
		result = TC_ACT_OK;
		break;
	case NF_DROP:
		result = TC_ACT_SHOT;
		ipt->tcf_qstats.drops++;
		break;
	case XT_CONTINUE:
		result = TC_ACT_PIPE;
		break;
	default:
		FUNC2("tc filter: Bogus netfilter code %d assume ACCEPT\n",
				       ret);
		result = TC_ACT_OK;
		break;
	}
	FUNC5(&ipt->tcf_lock);
	return result;

}