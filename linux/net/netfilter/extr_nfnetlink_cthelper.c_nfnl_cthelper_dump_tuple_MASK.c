#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  protonum; } ;
struct TYPE_4__ {int /*<<< orphan*/  l3num; } ;
struct TYPE_6__ {TYPE_2__ dst; TYPE_1__ src; } ;
struct nf_conntrack_helper {TYPE_3__ tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFCTH_TUPLE ; 
 int /*<<< orphan*/  NFCTH_TUPLE_L3PROTONUM ; 
 int /*<<< orphan*/  NFCTH_TUPLE_L4PROTONUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sk_buff *skb,
			 struct nf_conntrack_helper *helper)
{
	struct nlattr *nest_parms;

	nest_parms = FUNC2(skb, NFCTH_TUPLE);
	if (nest_parms == NULL)
		goto nla_put_failure;

	if (FUNC3(skb, NFCTH_TUPLE_L3PROTONUM,
			 FUNC0(helper->tuple.src.l3num)))
		goto nla_put_failure;

	if (FUNC4(skb, NFCTH_TUPLE_L4PROTONUM, helper->tuple.dst.protonum))
		goto nla_put_failure;

	FUNC1(skb, nest_parms);
	return 0;

nla_put_failure:
	return -1;
}