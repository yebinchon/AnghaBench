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
struct tcf_defact {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcfd_defdata; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_defact {int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_DEF_DATA ; 
 int /*<<< orphan*/  TCA_DEF_PAD ; 
 int /*<<< orphan*/  TCA_DEF_PARMS ; 
 int /*<<< orphan*/  TCA_DEF_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_defact*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_defact* FUNC10 (struct tc_action*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct tc_action *a,
			 int bind, int ref)
{
	unsigned char *b = FUNC6(skb);
	struct tcf_defact *d = FUNC10(a);
	struct tc_defact opt = {
		.index   = d->tcf_index,
		.refcnt  = FUNC5(&d->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&d->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC7(&d->tcf_lock);
	opt.action = d->tcf_action;
	if (FUNC1(skb, TCA_DEF_PARMS, sizeof(opt), &opt) ||
	    FUNC3(skb, TCA_DEF_DATA, d->tcfd_defdata))
		goto nla_put_failure;

	FUNC9(&t, &d->tcf_tm);
	if (FUNC2(skb, TCA_DEF_TM, sizeof(t), &t, TCA_DEF_PAD))
		goto nla_put_failure;
	FUNC8(&d->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC8(&d->tcf_lock);
	FUNC4(skb, b);
	return -1;
}