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
struct sock_filter {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cls_bpf_prog {int bpf_num_ops; int /*<<< orphan*/  bpf_ops; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_BPF_OPS ; 
 int /*<<< orphan*/  TCA_BPF_OPS_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(const struct cls_bpf_prog *prog,
				 struct sk_buff *skb)
{
	struct nlattr *nla;

	if (FUNC3(skb, TCA_BPF_OPS_LEN, prog->bpf_num_ops))
		return -EMSGSIZE;

	nla = FUNC4(skb, TCA_BPF_OPS, prog->bpf_num_ops *
			  sizeof(struct sock_filter));
	if (nla == NULL)
		return -EMSGSIZE;

	FUNC0(FUNC1(nla), prog->bpf_ops, FUNC2(nla));

	return 0;
}