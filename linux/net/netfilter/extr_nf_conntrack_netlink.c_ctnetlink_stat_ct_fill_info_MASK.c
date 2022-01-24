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
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct TYPE_2__ {int /*<<< orphan*/  count; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  CTA_STATS_GLOBAL_ENTRIES ; 
 int /*<<< orphan*/  CTA_STATS_GLOBAL_MAX_ENTRIES ; 
 int /*<<< orphan*/  IPCTNL_MSG_CT_GET_STATS ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_CTNETLINK ; 
 unsigned int NLM_F_MULTI ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int nf_conntrack_max ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,scalar_t__,scalar_t__,unsigned int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
			    struct net *net)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = portid ? NLM_F_MULTI : 0, event;
	unsigned int nr_conntracks = FUNC0(&net->ct.count);

	event = FUNC2(NFNL_SUBSYS_CTNETLINK, IPCTNL_MSG_CT_GET_STATS);
	nlh = FUNC7(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC5(nlh);
	nfmsg->nfgen_family = AF_UNSPEC;
	nfmsg->version      = NFNETLINK_V0;
	nfmsg->res_id	    = 0;

	if (FUNC3(skb, CTA_STATS_GLOBAL_ENTRIES, FUNC1(nr_conntracks)))
		goto nla_put_failure;

	if (FUNC3(skb, CTA_STATS_GLOBAL_MAX_ENTRIES, FUNC1(nf_conntrack_max)))
		goto nla_put_failure;

	FUNC6(skb, nlh);
	return skb->len;

nla_put_failure:
nlmsg_failure:
	FUNC4(skb, nlh);
	return -1;
}