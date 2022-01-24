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
struct tcf_vlan_params {scalar_t__ tcfv_action; int /*<<< orphan*/  tcfv_push_prio; int /*<<< orphan*/  tcfv_push_proto; int /*<<< orphan*/  tcfv_push_vid; } ;
struct tcf_vlan {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  vlan_p; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tcf_t {int dummy; } ;
struct tc_vlan {scalar_t__ v_action; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 scalar_t__ TCA_VLAN_ACT_MODIFY ; 
 scalar_t__ TCA_VLAN_ACT_PUSH ; 
 int /*<<< orphan*/  TCA_VLAN_PAD ; 
 int /*<<< orphan*/  TCA_VLAN_PARMS ; 
 int /*<<< orphan*/  TCA_VLAN_PUSH_VLAN_ID ; 
 int /*<<< orphan*/  TCA_VLAN_PUSH_VLAN_PRIORITY ; 
 int /*<<< orphan*/  TCA_VLAN_PUSH_VLAN_PROTOCOL ; 
 int /*<<< orphan*/  TCA_VLAN_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_vlan*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned char*) ; 
 struct tcf_vlan_params* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_vlan* FUNC14 (struct tc_action*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct tc_action *a,
			 int bind, int ref)
{
	unsigned char *b = FUNC10(skb);
	struct tcf_vlan *v = FUNC14(a);
	struct tcf_vlan_params *p;
	struct tc_vlan opt = {
		.index    = v->tcf_index,
		.refcnt   = FUNC9(&v->tcf_refcnt) - ref,
		.bindcnt  = FUNC0(&v->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC11(&v->tcf_lock);
	opt.action = v->tcf_action;
	p = FUNC8(v->vlan_p, FUNC1(&v->tcf_lock));
	opt.v_action = p->tcfv_action;
	if (FUNC2(skb, TCA_VLAN_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	if ((p->tcfv_action == TCA_VLAN_ACT_PUSH ||
	     p->tcfv_action == TCA_VLAN_ACT_MODIFY) &&
	    (FUNC5(skb, TCA_VLAN_PUSH_VLAN_ID, p->tcfv_push_vid) ||
	     FUNC4(skb, TCA_VLAN_PUSH_VLAN_PROTOCOL,
			  p->tcfv_push_proto) ||
	     (FUNC6(skb, TCA_VLAN_PUSH_VLAN_PRIORITY,
					      p->tcfv_push_prio))))
		goto nla_put_failure;

	FUNC13(&t, &v->tcf_tm);
	if (FUNC3(skb, TCA_VLAN_TM, sizeof(t), &t, TCA_VLAN_PAD))
		goto nla_put_failure;
	FUNC12(&v->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC12(&v->tcf_lock);
	FUNC7(skb, b);
	return -1;
}