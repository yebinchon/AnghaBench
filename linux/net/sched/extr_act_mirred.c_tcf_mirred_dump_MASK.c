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
struct tcf_mirred {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcfm_eaction; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_mirred {int /*<<< orphan*/  ifindex; int /*<<< orphan*/  eaction; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_MIRRED_PAD ; 
 int /*<<< orphan*/  TCA_MIRRED_PARMS ; 
 int /*<<< orphan*/  TCA_MIRRED_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_mirred*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC8 (struct tcf_mirred*) ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_mirred* FUNC10 (struct tc_action*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct tc_action *a, int bind,
			   int ref)
{
	unsigned char *b = FUNC5(skb);
	struct tcf_mirred *m = FUNC10(a);
	struct tc_mirred opt = {
		.index   = m->tcf_index,
		.refcnt  = FUNC4(&m->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&m->tcf_bindcnt) - bind,
	};
	struct net_device *dev;
	struct tcf_t t;

	FUNC6(&m->tcf_lock);
	opt.action = m->tcf_action;
	opt.eaction = m->tcfm_eaction;
	dev = FUNC8(m);
	if (dev)
		opt.ifindex = dev->ifindex;

	if (FUNC1(skb, TCA_MIRRED_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC9(&t, &m->tcf_tm);
	if (FUNC2(skb, TCA_MIRRED_TM, sizeof(t), &t, TCA_MIRRED_PAD))
		goto nla_put_failure;
	FUNC7(&m->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC7(&m->tcf_lock);
	FUNC3(skb, b);
	return -1;
}