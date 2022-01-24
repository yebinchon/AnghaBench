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
typedef  int /*<<< orphan*/  tm ;
struct tcf_t {int dummy; } ;
struct tcf_bpf {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_action {int dummy; } ;
struct tc_act_bpf {int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_ACT_BPF_PAD ; 
 int /*<<< orphan*/  TCA_ACT_BPF_PARMS ; 
 int /*<<< orphan*/  TCA_ACT_BPF_TM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_act_bpf*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct tcf_bpf*,struct sk_buff*) ; 
 int FUNC9 (struct tcf_bpf*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct tcf_bpf*) ; 
 int /*<<< orphan*/  FUNC11 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_bpf* FUNC12 (struct tc_action*) ; 

__attribute__((used)) static int FUNC13(struct sk_buff *skb, struct tc_action *act,
			int bind, int ref)
{
	unsigned char *tp = FUNC5(skb);
	struct tcf_bpf *prog = FUNC12(act);
	struct tc_act_bpf opt = {
		.index   = prog->tcf_index,
		.refcnt  = FUNC4(&prog->tcf_refcnt) - ref,
		.bindcnt = FUNC0(&prog->tcf_bindcnt) - bind,
	};
	struct tcf_t tm;
	int ret;

	FUNC6(&prog->tcf_lock);
	opt.action = prog->tcf_action;
	if (FUNC1(skb, TCA_ACT_BPF_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	if (FUNC10(prog))
		ret = FUNC9(prog, skb);
	else
		ret = FUNC8(prog, skb);
	if (ret)
		goto nla_put_failure;

	FUNC11(&tm, &prog->tcf_tm);
	if (FUNC2(skb, TCA_ACT_BPF_TM, sizeof(tm), &tm,
			  TCA_ACT_BPF_PAD))
		goto nla_put_failure;

	FUNC7(&prog->tcf_lock);
	return skb->len;

nla_put_failure:
	FUNC7(&prog->tcf_lock);
	FUNC3(skb, tp);
	return -1;
}