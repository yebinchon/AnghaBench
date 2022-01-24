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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct rtmsg {int rtm_dst_len; int rtm_src_len; scalar_t__ rtm_flags; int /*<<< orphan*/  rtm_protocol; int /*<<< orphan*/  rtm_scope; int /*<<< orphan*/  rtm_type; int /*<<< orphan*/  rtm_table; scalar_t__ rtm_tos; int /*<<< orphan*/  rtm_family; } ;
struct nlmsghdr {int dummy; } ;
struct mr_table {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int mfc_flags; } ;
struct mfc6_cache {TYPE_1__ _c; int /*<<< orphan*/  mf6c_mcastgrp; int /*<<< orphan*/  mf6c_origin; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENOENT ; 
 int MFC_STATIC ; 
 int /*<<< orphan*/  RTA_DST ; 
 int /*<<< orphan*/  RTA_SRC ; 
 int /*<<< orphan*/  RTA_TABLE ; 
 int /*<<< orphan*/  RTNL_FAMILY_IP6MR ; 
 int /*<<< orphan*/  RTN_MULTICAST ; 
 int /*<<< orphan*/  RTPROT_MROUTED ; 
 int /*<<< orphan*/  RTPROT_STATIC ; 
 int /*<<< orphan*/  RT_SCOPE_UNIVERSE ; 
 int FUNC0 (struct mr_table*,struct sk_buff*,TYPE_1__*,struct rtmsg*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlmsghdr*) ; 
 struct rtmsg* FUNC4 (struct nlmsghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct nlmsghdr*) ; 
 struct nlmsghdr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC7(struct mr_table *mrt, struct sk_buff *skb,
			     u32 portid, u32 seq, struct mfc6_cache *c, int cmd,
			     int flags)
{
	struct nlmsghdr *nlh;
	struct rtmsg *rtm;
	int err;

	nlh = FUNC6(skb, portid, seq, cmd, sizeof(*rtm), flags);
	if (!nlh)
		return -EMSGSIZE;

	rtm = FUNC4(nlh);
	rtm->rtm_family   = RTNL_FAMILY_IP6MR;
	rtm->rtm_dst_len  = 128;
	rtm->rtm_src_len  = 128;
	rtm->rtm_tos      = 0;
	rtm->rtm_table    = mrt->id;
	if (FUNC2(skb, RTA_TABLE, mrt->id))
		goto nla_put_failure;
	rtm->rtm_type = RTN_MULTICAST;
	rtm->rtm_scope    = RT_SCOPE_UNIVERSE;
	if (c->_c.mfc_flags & MFC_STATIC)
		rtm->rtm_protocol = RTPROT_STATIC;
	else
		rtm->rtm_protocol = RTPROT_MROUTED;
	rtm->rtm_flags    = 0;

	if (FUNC1(skb, RTA_SRC, &c->mf6c_origin) ||
	    FUNC1(skb, RTA_DST, &c->mf6c_mcastgrp))
		goto nla_put_failure;
	err = FUNC0(mrt, skb, &c->_c, rtm);
	/* do not break the dump if cache is unresolved */
	if (err < 0 && err != -ENOENT)
		goto nla_put_failure;

	FUNC5(skb, nlh);
	return 0;

nla_put_failure:
	FUNC3(skb, nlh);
	return -EMSGSIZE;
}