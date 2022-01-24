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
struct tcf_nat {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_nat {int /*<<< orphan*/  action; int /*<<< orphan*/  flags; int /*<<< orphan*/  mask; int /*<<< orphan*/  new_addr; int /*<<< orphan*/  old_addr; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_NAT_PAD ; 
 int /*<<< orphan*/  TCA_NAT_PARMS ; 
 int /*<<< orphan*/  TCA_NAT_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_nat*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_nat* FUNC9 (struct tc_action*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct tc_action *a,
			int bind, int ref)
{
	unsigned char *b = FUNC5(skb);
	struct tcf_nat *p = FUNC9(a);
	struct tc_nat opt = {
		.index    = p->tcf_index,
		.refcnt   = FUNC4(&p->tcf_refcnt) - ref,
		.bindcnt  = FUNC0(&p->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC6(&p->tcf_lock);
	opt.old_addr = p->old_addr;
	opt.new_addr = p->new_addr;
	opt.mask = p->mask;
	opt.flags = p->flags;
	opt.action = p->tcf_action;

	if (FUNC1(skb, TCA_NAT_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC8(&t, &p->tcf_tm);
	if (FUNC2(skb, TCA_NAT_TM, sizeof(t), &t, TCA_NAT_PAD))
		goto nla_put_failure;
	FUNC7(&p->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC7(&p->tcf_lock);
	FUNC3(skb, b);
	return -1;
}