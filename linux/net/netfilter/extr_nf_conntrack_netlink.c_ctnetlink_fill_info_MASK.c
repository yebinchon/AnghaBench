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
struct nlattr {int dummy; } ;
struct nfgenmsg {scalar_t__ res_id; int /*<<< orphan*/  version; int /*<<< orphan*/  nfgen_family; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conn {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTA_TUPLE_ORIG ; 
 int /*<<< orphan*/  CTA_TUPLE_REPLY ; 
 int /*<<< orphan*/  CTA_TUPLE_ZONE ; 
 int /*<<< orphan*/  CTA_ZONE ; 
 int /*<<< orphan*/  IPCTNL_MSG_CT_NEW ; 
 int /*<<< orphan*/  IPS_OFFLOAD_BIT ; 
 int /*<<< orphan*/  IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  NFNETLINK_V0 ; 
 int /*<<< orphan*/  NFNL_SUBSYS_CTNETLINK ; 
 int /*<<< orphan*/  NF_CT_DEFAULT_ZONE_DIR ; 
 int /*<<< orphan*/  NF_CT_ZONE_DIR_ORIG ; 
 int /*<<< orphan*/  NF_CT_ZONE_DIR_REPL ; 
 unsigned int NLM_F_MULTI ; 
 scalar_t__ FUNC0 (struct sk_buff*,struct nf_conn*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC3 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC10 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC13 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (struct sk_buff*,struct nf_conn*) ; 
 scalar_t__ FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,struct nf_conntrack_zone const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC17 (struct nf_conn*,int /*<<< orphan*/ ) ; 
 struct nf_conntrack_zone* FUNC18 (struct nf_conn*) ; 
 unsigned int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC21 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nfgenmsg* FUNC23 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC24 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC25 (struct sk_buff*,scalar_t__,scalar_t__,unsigned int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC27(struct sk_buff *skb, u32 portid, u32 seq, u32 type,
		    struct nf_conn *ct)
{
	const struct nf_conntrack_zone *zone;
	struct nlmsghdr *nlh;
	struct nfgenmsg *nfmsg;
	struct nlattr *nest_parms;
	unsigned int flags = portid ? NLM_F_MULTI : 0, event;

	event = FUNC19(NFNL_SUBSYS_CTNETLINK, IPCTNL_MSG_CT_NEW);
	nlh = FUNC25(skb, portid, seq, event, sizeof(*nfmsg), flags);
	if (nlh == NULL)
		goto nlmsg_failure;

	nfmsg = FUNC23(nlh);
	nfmsg->nfgen_family = FUNC16(ct);
	nfmsg->version      = NFNETLINK_V0;
	nfmsg->res_id	    = 0;

	zone = FUNC18(ct);

	nest_parms = FUNC21(skb, CTA_TUPLE_ORIG);
	if (!nest_parms)
		goto nla_put_failure;
	if (FUNC13(skb, FUNC17(ct, IP_CT_DIR_ORIGINAL)) < 0)
		goto nla_put_failure;
	if (FUNC15(skb, CTA_TUPLE_ZONE, zone,
				   NF_CT_ZONE_DIR_ORIG) < 0)
		goto nla_put_failure;
	FUNC20(skb, nest_parms);

	nest_parms = FUNC21(skb, CTA_TUPLE_REPLY);
	if (!nest_parms)
		goto nla_put_failure;
	if (FUNC13(skb, FUNC17(ct, IP_CT_DIR_REPLY)) < 0)
		goto nla_put_failure;
	if (FUNC15(skb, CTA_TUPLE_ZONE, zone,
				   NF_CT_ZONE_DIR_REPL) < 0)
		goto nla_put_failure;
	FUNC20(skb, nest_parms);

	if (FUNC15(skb, CTA_ZONE, zone,
				   NF_CT_DEFAULT_ZONE_DIR) < 0)
		goto nla_put_failure;

	if (FUNC10(skb, ct) < 0 ||
	    FUNC0(skb, ct, type) < 0 ||
	    FUNC12(skb, ct) < 0 ||
	    FUNC3(skb, ct) < 0 ||
	    FUNC6(skb, ct) < 0 ||
	    FUNC9(skb, ct) < 0 ||
	    FUNC5(skb, ct) < 0 ||
	    FUNC4(skb, ct) < 0 ||
	    FUNC14(skb, ct) < 0 ||
	    FUNC7(skb, ct) < 0 ||
	    FUNC1(skb, ct) < 0 ||
	    FUNC2(skb, ct) < 0)
		goto nla_put_failure;

	if (!FUNC26(IPS_OFFLOAD_BIT, &ct->status) &&
	    (FUNC11(skb, ct) < 0 ||
	     FUNC8(skb, ct) < 0))
		goto nla_put_failure;

	FUNC24(skb, nlh);
	return skb->len;

nlmsg_failure:
nla_put_failure:
	FUNC22(skb, nlh);
	return -1;
}