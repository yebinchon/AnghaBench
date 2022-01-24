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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_NFT_COMPAT ; 
 int /*<<< orphan*/  NFTA_COMPAT_NAME ; 
 int /*<<< orphan*/  NFTA_COMPAT_REV ; 
 int /*<<< orphan*/  NFTA_COMPAT_TYPE ; 
 unsigned int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC5 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC7 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 

__attribute__((used)) static int
FUNC8(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
		      int event, u16 family, const char *name,
		      int rev, int target)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = portid ? NLM_F_MULTI : 0;

	event = FUNC1(NFNL_SUBSYS_NFT_COMPAT, event);
	nlh = FUNC7(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC5(nlh);
	nfmsg->nfgen_family = family;
	nfmsg->version = NFNETLINK_V0;
	nfmsg->res_id = 0;

	if (FUNC3(skb, NFTA_COMPAT_NAME, name) ||
	    FUNC2(skb, NFTA_COMPAT_REV, FUNC0(rev)) ||
	    FUNC2(skb, NFTA_COMPAT_TYPE, FUNC0(target)))
		goto nla_put_failure;

	FUNC6(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC4(skb, nlh);
	return -1;
}