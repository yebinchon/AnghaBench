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
struct nfgenmsg {int /*<<< orphan*/  res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct ip_conntrack_stat {int /*<<< orphan*/  search_restart; int /*<<< orphan*/  error; int /*<<< orphan*/  early_drop; int /*<<< orphan*/  drop; int /*<<< orphan*/  insert_failed; int /*<<< orphan*/  insert; int /*<<< orphan*/  ignore; int /*<<< orphan*/  invalid; int /*<<< orphan*/  found; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  CTA_STATS_DROP ; 
 int /*<<< orphan*/  CTA_STATS_EARLY_DROP ; 
 int /*<<< orphan*/  CTA_STATS_ERROR ; 
 int /*<<< orphan*/  CTA_STATS_FOUND ; 
 int /*<<< orphan*/  CTA_STATS_IGNORE ; 
 int /*<<< orphan*/  CTA_STATS_INSERT ; 
 int /*<<< orphan*/  CTA_STATS_INSERT_FAILED ; 
 int /*<<< orphan*/  CTA_STATS_INVALID ; 
 int /*<<< orphan*/  CTA_STATS_SEARCH_RESTART ; 
 int /*<<< orphan*/  IPCTNL_MSG_CT_GET_STATS_CPU ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_CTNETLINK ; 
 unsigned int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,scalar_t__,scalar_t__,unsigned int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct sk_buff *skb, u32 portid, u32 seq,
				__u16 cpu, const struct ip_conntrack_stat *st)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = portid ? NLM_F_MULTI : 0, event;

	event = FUNC2(NFNL_SUBSYS_CTNETLINK,
			      IPCTNL_MSG_CT_GET_STATS_CPU);
	nlh = FUNC7(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC5(nlh);
	nfmsg->nfgen_family = AF_UNSPEC;
	nfmsg->version      = NFNETLINK_V0;
	nfmsg->res_id	    = FUNC1(cpu);

	if (FUNC3(skb, CTA_STATS_FOUND, FUNC0(st->found)) ||
	    FUNC3(skb, CTA_STATS_INVALID, FUNC0(st->invalid)) ||
	    FUNC3(skb, CTA_STATS_IGNORE, FUNC0(st->ignore)) ||
	    FUNC3(skb, CTA_STATS_INSERT, FUNC0(st->insert)) ||
	    FUNC3(skb, CTA_STATS_INSERT_FAILED,
				FUNC0(st->insert_failed)) ||
	    FUNC3(skb, CTA_STATS_DROP, FUNC0(st->drop)) ||
	    FUNC3(skb, CTA_STATS_EARLY_DROP, FUNC0(st->early_drop)) ||
	    FUNC3(skb, CTA_STATS_ERROR, FUNC0(st->error)) ||
	    FUNC3(skb, CTA_STATS_SEARCH_RESTART,
				FUNC0(st->search_restart)))
		goto nla_put_failure;

	FUNC6(skb, nlh);
	return skb->len;

nla_put_failure:
nlmsg_failure:
	FUNC4(skb, nlh);
	return -1;
}