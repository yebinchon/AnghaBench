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
struct tcf_mpls_params {scalar_t__ tcfm_label; scalar_t__ tcfm_tc; scalar_t__ tcfm_ttl; scalar_t__ tcfm_bos; int /*<<< orphan*/  tcfm_proto; int /*<<< orphan*/  tcfm_action; } ;
struct tcf_mpls {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  mpls_p; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_mpls {int /*<<< orphan*/  m_action; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 scalar_t__ ACT_MPLS_BOS_NOT_SET ; 
 scalar_t__ ACT_MPLS_LABEL_NOT_SET ; 
 scalar_t__ ACT_MPLS_TC_NOT_SET ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_MPLS_BOS ; 
 int /*<<< orphan*/  TCA_MPLS_LABEL ; 
 int /*<<< orphan*/  TCA_MPLS_PAD ; 
 int /*<<< orphan*/  TCA_MPLS_PARMS ; 
 int /*<<< orphan*/  TCA_MPLS_PROTO ; 
 int /*<<< orphan*/  TCA_MPLS_TC ; 
 int /*<<< orphan*/  TCA_MPLS_TM ; 
 int /*<<< orphan*/  TCA_MPLS_TTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_mpls*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned char*) ; 
 struct tcf_mpls_params* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC10 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_mpls* FUNC14 (struct tc_action*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct tc_action *a,
			 int bind, int ref)
{
	unsigned char *b = FUNC10(skb);
	struct tcf_mpls *m = FUNC14(a);
	struct tcf_mpls_params *p;
	struct tc_mpls opt = {
		.index    = m->tcf_index,
		.refcnt   = FUNC9(&m->tcf_refcnt) - ref,
		.bindcnt  = FUNC0(&m->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC11(&m->tcf_lock);
	opt.action = m->tcf_action;
	p = FUNC8(m->mpls_p, FUNC1(&m->tcf_lock));
	opt.m_action = p->tcfm_action;

	if (FUNC2(skb, TCA_MPLS_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	if (p->tcfm_label != ACT_MPLS_LABEL_NOT_SET &&
	    FUNC5(skb, TCA_MPLS_LABEL, p->tcfm_label))
		goto nla_put_failure;

	if (p->tcfm_tc != ACT_MPLS_TC_NOT_SET &&
	    FUNC6(skb, TCA_MPLS_TC, p->tcfm_tc))
		goto nla_put_failure;

	if (p->tcfm_ttl && FUNC6(skb, TCA_MPLS_TTL, p->tcfm_ttl))
		goto nla_put_failure;

	if (p->tcfm_bos != ACT_MPLS_BOS_NOT_SET &&
	    FUNC6(skb, TCA_MPLS_BOS, p->tcfm_bos))
		goto nla_put_failure;

	if (FUNC4(skb, TCA_MPLS_PROTO, p->tcfm_proto))
		goto nla_put_failure;

	FUNC13(&t, &m->tcf_tm);

	if (FUNC3(skb, TCA_MPLS_TM, sizeof(t), &t, TCA_MPLS_PAD))
		goto nla_put_failure;

	FUNC12(&m->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC12(&m->tcf_lock);
	FUNC7(skb, b);
	return -EMSGSIZE;
}