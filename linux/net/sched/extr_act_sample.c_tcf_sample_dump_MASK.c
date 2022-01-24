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
struct tcf_sample {int /*<<< orphan*/  tcf_lock; int /*<<< orphan*/  psample_group_num; int /*<<< orphan*/  trunc_size; scalar_t__ truncate; int /*<<< orphan*/  rate; int /*<<< orphan*/  tcf_tm; int /*<<< orphan*/  tcf_action; int /*<<< orphan*/  tcf_bindcnt; int /*<<< orphan*/  tcf_refcnt; int /*<<< orphan*/  tcf_index; } ;
struct tc_sample {int /*<<< orphan*/  action; int /*<<< orphan*/  bindcnt; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_SAMPLE_PAD ; 
 int /*<<< orphan*/  TCA_SAMPLE_PARMS ; 
 int /*<<< orphan*/  TCA_SAMPLE_PSAMPLE_GROUP ; 
 int /*<<< orphan*/  TCA_SAMPLE_RATE ; 
 int /*<<< orphan*/  TCA_SAMPLE_TM ; 
 int /*<<< orphan*/  TCA_SAMPLE_TRUNC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_sample*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tcf_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct tcf_t*,int /*<<< orphan*/ *) ; 
 struct tcf_sample* FUNC10 (struct tc_action*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct tc_action *a,
			   int bind, int ref)
{
	unsigned char *b = FUNC6(skb);
	struct tcf_sample *s = FUNC10(a);
	struct tc_sample opt = {
		.index      = s->tcf_index,
		.refcnt     = FUNC5(&s->tcf_refcnt) - ref,
		.bindcnt    = FUNC0(&s->tcf_bindcnt) - bind,
	};
	struct tcf_t t;

	FUNC7(&s->tcf_lock);
	opt.action = s->tcf_action;
	if (FUNC1(skb, TCA_SAMPLE_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	FUNC9(&t, &s->tcf_tm);
	if (FUNC2(skb, TCA_SAMPLE_TM, sizeof(t), &t, TCA_SAMPLE_PAD))
		goto nla_put_failure;

	if (FUNC3(skb, TCA_SAMPLE_RATE, s->rate))
		goto nla_put_failure;

	if (s->truncate)
		if (FUNC3(skb, TCA_SAMPLE_TRUNC_SIZE, s->trunc_size))
			goto nla_put_failure;

	if (FUNC3(skb, TCA_SAMPLE_PSAMPLE_GROUP, s->psample_group_num))
		goto nla_put_failure;
	FUNC8(&s->tcf_lock);

	return skb->len;

nla_put_failure:
	FUNC8(&s->tcf_lock);
	FUNC4(skb, b);
	return -1;
}