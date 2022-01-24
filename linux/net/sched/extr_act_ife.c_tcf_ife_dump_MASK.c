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
typedef  int /*<<< orphan*/  t ;
struct tcf_t {int dummy; } ;
struct tc_ife {int /*<<< orphan*/  flags; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tcf_ife_params {struct tc_ife eth_type; struct tc_ife* eth_src; struct tc_ife* eth_dst; int /*<<< orphan*/  flags; } ;
struct tcf_ife_info {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  params; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int ETH_ALEN ; 
 int /*<<< orphan*/  TCA_IFE_DMAC ; 
 int /*<<< orphan*/  TCA_IFE_PAD ; 
 int /*<<< orphan*/  TCA_IFE_PARMS ; 
 int /*<<< orphan*/  TCA_IFE_SMAC ; 
 int /*<<< orphan*/  TCA_IFE_TM ; 
 int /*<<< orphan*/  TCA_IFE_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct tcf_ife_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct tc_ife*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_ife*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 struct tcf_ife_params* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_ife_info* FUNC14 (struct tc_action*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct tc_action *a, int bind,
			int ref)
{
	unsigned char *b = FUNC10(skb);
	struct tcf_ife_info *ife = FUNC14(a);
	struct tcf_ife_params *p;
	struct tc_ife opt = {
		.index = ife->tcf_index,
		.refcnt = FUNC9(&ife->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&ife->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC11(&ife->tcf_lock);
	opt.action = ife->tcf_action;
	p = FUNC8(ife->params,
				      FUNC3(&ife->tcf_lock));
	opt.flags = p->flags;

	if (FUNC4(skb, TCA_IFE_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC13(&t, &ife->tcf_tm);
	if (FUNC5(skb, TCA_IFE_TM, sizeof(t), &t, TCA_IFE_PAD))
		goto nla_put_failure;

	if (!FUNC2(p->eth_dst)) {
		if (FUNC4(skb, TCA_IFE_DMAC, ETH_ALEN, p->eth_dst))
			goto nla_put_failure;
	}

	if (!FUNC2(p->eth_src)) {
		if (FUNC4(skb, TCA_IFE_SMAC, ETH_ALEN, p->eth_src))
			goto nla_put_failure;
	}

	if (FUNC4(skb, TCA_IFE_TYPE, 2, &p->eth_type))
		goto nla_put_failure;

	if (FUNC1(skb, ife)) {
		/*ignore failure to dump metalist */
		FUNC7("Failed to dump metalist\n");
	}

	FUNC12(&ife->tcf_lock);
	return skb->len;

nla_put_failure:
	FUNC12(&ife->tcf_lock);
	FUNC6(skb, b);
	return -1;
}