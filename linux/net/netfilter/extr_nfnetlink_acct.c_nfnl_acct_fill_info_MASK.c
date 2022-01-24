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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct sk_buff {int len; } ;
struct nlmsghdr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct nf_acct {scalar_t__ flags; scalar_t__ data; int /*<<< orphan*/  refcnt; int /*<<< orphan*/  bytes; int /*<<< orphan*/  pkts; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  NFACCT_BYTES ; 
 int /*<<< orphan*/  NFACCT_FLAGS ; 
 int NFACCT_F_QUOTA ; 
 int /*<<< orphan*/  NFACCT_NAME ; 
 int /*<<< orphan*/  NFACCT_OVERQUOTA_BIT ; 
 int /*<<< orphan*/  NFACCT_PAD ; 
 int /*<<< orphan*/  NFACCT_PKTS ; 
 int /*<<< orphan*/  NFACCT_QUOTA ; 
 int /*<<< orphan*/  NFACCT_USE ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 scalar_t__ NFNL_MSG_ACCT_GET_CTRZERO ; 
 int /*<<< orphan*/  NFNL_SUBSYS_ACCT ; 
 unsigned int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC10 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC12 (struct sk_buff*,scalar_t__,scalar_t__,int,int,unsigned int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int
FUNC15(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
		   int event, struct nf_acct *acct)
{
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	unsigned int flags = portid ? NLM_F_MULTI : 0;
	u64 pkts, bytes;
	u32 old_flags;

	event = FUNC5(NFNL_SUBSYS_ACCT, event);
	nlh = FUNC12(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC10(nlh);
	nfmsg->nfgen_family = AF_UNSPEC;
	nfmsg->version = NFNETLINK_V0;
	nfmsg->res_id = 0;

	if (FUNC8(skb, NFACCT_NAME, acct->name))
		goto nla_put_failure;

	old_flags = acct->flags;
	if (type == NFNL_MSG_ACCT_GET_CTRZERO) {
		pkts = FUNC1(&acct->pkts, 0);
		bytes = FUNC1(&acct->bytes, 0);
		FUNC14();
		if (acct->flags & NFACCT_F_QUOTA)
			FUNC2(NFACCT_OVERQUOTA_BIT, &acct->flags);
	} else {
		pkts = FUNC0(&acct->pkts);
		bytes = FUNC0(&acct->bytes);
	}
	if (FUNC7(skb, NFACCT_PKTS, FUNC3(pkts),
			 NFACCT_PAD) ||
	    FUNC7(skb, NFACCT_BYTES, FUNC3(bytes),
			 NFACCT_PAD) ||
	    FUNC6(skb, NFACCT_USE, FUNC4(FUNC13(&acct->refcnt))))
		goto nla_put_failure;
	if (acct->flags & NFACCT_F_QUOTA) {
		u64 *quota = (u64 *)acct->data;

		if (FUNC6(skb, NFACCT_FLAGS, FUNC4(old_flags)) ||
		    FUNC7(skb, NFACCT_QUOTA, FUNC3(*quota),
				 NFACCT_PAD))
			goto nla_put_failure;
	}
	FUNC11(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC9(skb, nlh);
	return -1;
}