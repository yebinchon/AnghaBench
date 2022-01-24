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
struct tcmsg {int /*<<< orphan*/  tcm_handle; } ;
struct tcf_proto {int /*<<< orphan*/  root; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct cls_cgroup_head {int /*<<< orphan*/  exts; int /*<<< orphan*/  ematches; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_CGROUP_EMATCHES ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct cls_cgroup_head* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net *net, struct tcf_proto *tp, void *fh,
			   struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
	struct cls_cgroup_head *head = FUNC3(tp->root);
	struct nlattr *nest;

	t->tcm_handle = head->handle;

	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	if (FUNC5(skb, &head->exts) < 0 ||
	    FUNC4(skb, &head->ematches, TCA_CGROUP_EMATCHES) < 0)
		goto nla_put_failure;

	FUNC1(skb, nest);

	if (FUNC6(skb, &head->exts) < 0)
		goto nla_put_failure;

	return skb->len;

nla_put_failure:
	FUNC0(skb, nest);
	return -1;
}