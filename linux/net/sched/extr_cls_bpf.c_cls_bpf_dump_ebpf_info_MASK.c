#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct cls_bpf_prog {TYPE_2__* filter; scalar_t__ bpf_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  tag; TYPE_1__* aux; } ;
struct TYPE_3__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_BPF_ID ; 
 int /*<<< orphan*/  TCA_BPF_NAME ; 
 int /*<<< orphan*/  TCA_BPF_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(const struct cls_bpf_prog *prog,
				  struct sk_buff *skb)
{
	struct nlattr *nla;

	if (prog->bpf_name &&
	    FUNC3(skb, TCA_BPF_NAME, prog->bpf_name))
		return -EMSGSIZE;

	if (FUNC4(skb, TCA_BPF_ID, prog->filter->aux->id))
		return -EMSGSIZE;

	nla = FUNC5(skb, TCA_BPF_TAG, sizeof(prog->filter->tag));
	if (nla == NULL)
		return -EMSGSIZE;

	FUNC0(FUNC1(nla), prog->filter->tag, FUNC2(nla));

	return 0;
}