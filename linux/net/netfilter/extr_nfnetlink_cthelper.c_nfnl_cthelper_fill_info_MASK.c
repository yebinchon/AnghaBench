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
typedef  scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_helper {int queue_num; int data_len; int flags; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  NFCTH_NAME ; 
 int /*<<< orphan*/  NFCTH_PRIV_DATA_LEN ; 
 int /*<<< orphan*/  NFCTH_QUEUE_NUM ; 
 int /*<<< orphan*/  NFCTH_STATUS ; 
 int NFCT_HELPER_STATUS_DISABLED ; 
 int NFCT_HELPER_STATUS_ENABLED ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_CTHELPER ; 
 int NF_CT_HELPER_F_CONFIGURED ; 
 unsigned int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct nf_conntrack_helper*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct nf_conntrack_helper*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC7 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC9 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC10(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
			int event, struct nf_conntrack_helper *helper)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = portid ? NLM_F_MULTI : 0;
	int status;

	event = FUNC3(NFNL_SUBSYS_CTHELPER, event);
	nlh = FUNC9(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC7(nlh);
	nfmsg->nfgen_family = AF_UNSPEC;
	nfmsg->version = NFNETLINK_V0;
	nfmsg->res_id = 0;

	if (FUNC5(skb, NFCTH_NAME, helper->name))
		goto nla_put_failure;

	if (FUNC4(skb, NFCTH_QUEUE_NUM, FUNC0(helper->queue_num)))
		goto nla_put_failure;

	if (FUNC2(skb, helper) < 0)
		goto nla_put_failure;

	if (FUNC1(skb, helper) < 0)
		goto nla_put_failure;

	if (FUNC4(skb, NFCTH_PRIV_DATA_LEN, FUNC0(helper->data_len)))
		goto nla_put_failure;

	if (helper->flags & NF_CT_HELPER_F_CONFIGURED)
		status = NFCT_HELPER_STATUS_ENABLED;
	else
		status = NFCT_HELPER_STATUS_DISABLED;

	if (FUNC4(skb, NFCTH_STATUS, FUNC0(status)))
		goto nla_put_failure;

	FUNC8(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC6(skb, nlh);
	return -1;
}