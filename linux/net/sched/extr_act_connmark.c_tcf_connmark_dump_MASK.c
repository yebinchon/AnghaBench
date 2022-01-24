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
struct tcf_connmark_info {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  zone; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_connmark {int /*<<< orphan*/  zone; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_CONNMARK_PAD ; 
 int /*<<< orphan*/  TCA_CONNMARK_PARMS ; 
 int /*<<< orphan*/  TCA_CONNMARK_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_connmark*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_connmark_info* FUNC9 (struct tc_action*) ; 

__attribute__((used)) static inline int FUNC10(struct sk_buff *skb, struct tc_action *a,
				    int bind, int ref)
{
	unsigned char *b = FUNC5(skb);
	struct tcf_connmark_info *ci = FUNC9(a);
	struct tc_connmark opt = {
		.index   = ci->tcf_index,
		.refcnt  = FUNC4(&ci->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&ci->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC6(&ci->tcf_lock);
	opt.action = ci->tcf_action;
	opt.zone = ci->zone;
	if (FUNC1(skb, TCA_CONNMARK_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC8(&t, &ci->tcf_tm);
	if (FUNC2(skb, TCA_CONNMARK_TM, sizeof(t), &t,
			  TCA_CONNMARK_PAD))
		goto nla_put_failure;
	FUNC7(&ci->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC7(&ci->tcf_lock);
	FUNC3(skb, b);
	return -1;
}