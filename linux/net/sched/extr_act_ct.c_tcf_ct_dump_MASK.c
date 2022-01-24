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
struct tcf_ct_params {int ct_action; int mark; int* labels; int zone; int /*<<< orphan*/ * labels_mask; int /*<<< orphan*/  mark_mask; } ;
struct tcf_ct {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  params; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_ct {int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_LABELS ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_MARK ; 
 int /*<<< orphan*/  CONFIG_NF_CONNTRACK_ZONES ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_CT_ACTION ; 
 int TCA_CT_ACT_CLEAR ; 
 int /*<<< orphan*/  TCA_CT_LABELS ; 
 int /*<<< orphan*/  TCA_CT_LABELS_MASK ; 
 int /*<<< orphan*/  TCA_CT_MARK ; 
 int /*<<< orphan*/  TCA_CT_MARK_MASK ; 
 int /*<<< orphan*/  TCA_CT_PAD ; 
 int /*<<< orphan*/  TCA_CT_PARMS ; 
 int /*<<< orphan*/  TCA_CT_TM ; 
 int /*<<< orphan*/  TCA_CT_UNSPEC ; 
 int /*<<< orphan*/  TCA_CT_ZONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_ct*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,unsigned char*) ; 
 struct tcf_ct_params* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct sk_buff*,struct tcf_ct_params*) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_ct* FUNC14 (struct tc_action*) ; 

__attribute__((used)) static inline int FUNC15(struct sk_buff *skb, struct tc_action *a,
			      int bind, int ref)
{
	unsigned char *b = FUNC8(skb);
	struct tcf_ct *c = FUNC14(a);
	struct tcf_ct_params *p;

	struct tc_ct opt = {
		.index   = c->tcf_index,
		.refcnt  = FUNC7(&c->tcf_refcnt) - ref,
		.bindcnt = FUNC1(&c->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC9(&c->tcf_lock);
	p = FUNC6(c->params,
				      FUNC2(&c->tcf_lock));
	opt.action = c->tcf_action;

	if (FUNC11(skb,
				&p->ct_action, TCA_CT_ACTION,
				NULL, TCA_CT_UNSPEC,
				sizeof(p->ct_action)))
		goto nla_put_failure;

	if (p->ct_action & TCA_CT_ACT_CLEAR)
		goto skip_dump;

	if (FUNC0(CONFIG_NF_CONNTRACK_MARK) &&
	    FUNC11(skb,
				&p->mark, TCA_CT_MARK,
				&p->mark_mask, TCA_CT_MARK_MASK,
				sizeof(p->mark)))
		goto nla_put_failure;

	if (FUNC0(CONFIG_NF_CONNTRACK_LABELS) &&
	    FUNC11(skb,
				p->labels, TCA_CT_LABELS,
				p->labels_mask, TCA_CT_LABELS_MASK,
				sizeof(p->labels)))
		goto nla_put_failure;

	if (FUNC0(CONFIG_NF_CONNTRACK_ZONES) &&
	    FUNC11(skb,
				&p->zone, TCA_CT_ZONE,
				NULL, TCA_CT_UNSPEC,
				sizeof(p->zone)))
		goto nla_put_failure;

	if (FUNC12(skb, p))
		goto nla_put_failure;

skip_dump:
	if (FUNC3(skb, TCA_CT_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC13(&t, &c->tcf_tm);
	if (FUNC4(skb, TCA_CT_TM, sizeof(t), &t, TCA_CT_PAD))
		goto nla_put_failure;
	FUNC10(&c->tcf_lock);

	return skb->len;
nla_put_failure:
	FUNC10(&c->tcf_lock);
	FUNC5(skb, b);
	return -1;
}