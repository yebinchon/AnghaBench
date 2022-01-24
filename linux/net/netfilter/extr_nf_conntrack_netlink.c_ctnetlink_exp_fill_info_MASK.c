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
typedef  scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct TYPE_3__ {int /*<<< orphan*/  l3num; } ;
struct TYPE_4__ {TYPE_1__ src; } ;
struct nf_conntrack_expect {TYPE_2__ tuple; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_CTNETLINK_EXP ; 
 unsigned int NLM_F_MULTI ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct nf_conntrack_expect const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC3 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC6(struct sk_buff *skb, u32 portid, u32 seq,
			int event, const struct nf_conntrack_expect *exp)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = portid ? NLM_F_MULTI : 0;

	event = FUNC1(NFNL_SUBSYS_CTNETLINK_EXP, event);
	nlh = FUNC5(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC3(nlh);
	nfmsg->nfgen_family = exp->tuple.src.l3num;
	nfmsg->version	    = NFNETLINK_V0;
	nfmsg->res_id	    = 0;

	if (FUNC0(skb, exp) < 0)
		goto nla_put_failure;

	FUNC4(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC2(skb, nlh);
	return -1;
}