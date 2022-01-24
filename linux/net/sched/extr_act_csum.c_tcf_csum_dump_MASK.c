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
struct tcf_csum_params {int /*<<< orphan*/  update_flags; } ;
struct tcf_csum {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  params; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_csum {int /*<<< orphan*/  update_flags; int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_CSUM_PAD ; 
 int /*<<< orphan*/  TCA_CSUM_PARMS ; 
 int /*<<< orphan*/  TCA_CSUM_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_csum*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 struct tcf_csum_params* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_csum* FUNC11 (struct tc_action*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff *skb, struct tc_action *a, int bind,
			 int ref)
{
	unsigned char *b = FUNC7(skb);
	struct tcf_csum *p = FUNC11(a);
	struct tcf_csum_params *params;
	struct tc_csum opt = {
		.index   = p->tcf_index,
		.refcnt  = FUNC6(&p->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&p->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC8(&p->tcf_lock);
	params = FUNC5(p->params,
					   FUNC1(&p->tcf_lock));
	opt.action = p->tcf_action;
	opt.update_flags = params->update_flags;

	if (FUNC2(skb, TCA_CSUM_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC10(&t, &p->tcf_tm);
	if (FUNC3(skb, TCA_CSUM_TM, sizeof(t), &t, TCA_CSUM_PAD))
		goto nla_put_failure;
	FUNC9(&p->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC9(&p->tcf_lock);
	FUNC4(skb, b);
	return -1;
}