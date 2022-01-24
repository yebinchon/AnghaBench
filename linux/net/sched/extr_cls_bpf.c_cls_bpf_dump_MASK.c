#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct tcmsg {int /*<<< orphan*/  tcm_handle; } ;
struct tcf_proto {int dummy; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct cls_bpf_prog {int /*<<< orphan*/  exts; scalar_t__ gen_flags; scalar_t__ exts_integrated; TYPE_1__ res; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_BPF_CLASSID ; 
 int /*<<< orphan*/  TCA_BPF_FLAGS ; 
 int /*<<< orphan*/  TCA_BPF_FLAGS_GEN ; 
 scalar_t__ TCA_BPF_FLAG_ACT_DIRECT ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int FUNC0 (struct cls_bpf_prog*,struct sk_buff*) ; 
 int FUNC1 (struct cls_bpf_prog*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct cls_bpf_prog*) ; 
 int /*<<< orphan*/  FUNC3 (struct tcf_proto*,struct cls_bpf_prog*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct net *net, struct tcf_proto *tp, void *fh,
			struct sk_buff *skb, struct tcmsg *tm, bool rtnl_held)
{
	struct cls_bpf_prog *prog = fh;
	struct nlattr *nest;
	u32 bpf_flags = 0;
	int ret;

	if (prog == NULL)
		return skb->len;

	tm->tcm_handle = prog->handle;

	FUNC3(tp, prog);

	nest = FUNC6(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (prog->res.classid &&
	    FUNC7(skb, TCA_BPF_CLASSID, prog->res.classid))
		goto nla_put_failure;

	if (FUNC2(prog))
		ret = FUNC1(prog, skb);
	else
		ret = FUNC0(prog, skb);
	if (ret)
		goto nla_put_failure;

	if (FUNC8(skb, &prog->exts) < 0)
		goto nla_put_failure;

	if (prog->exts_integrated)
		bpf_flags |= TCA_BPF_FLAG_ACT_DIRECT;
	if (bpf_flags && FUNC7(skb, TCA_BPF_FLAGS, bpf_flags))
		goto nla_put_failure;
	if (prog->gen_flags &&
	    FUNC7(skb, TCA_BPF_FLAGS_GEN, prog->gen_flags))
		goto nla_put_failure;

	FUNC5(skb, nest);

	if (FUNC9(skb, &prog->exts) < 0)
		goto nla_put_failure;

	return skb->len;

nla_put_failure:
	FUNC4(skb, nest);
	return -1;
}