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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; } ;
struct mpath_info {int filled; int /*<<< orphan*/  path_change_count; int /*<<< orphan*/  hop_count; int /*<<< orphan*/  discovery_retries; int /*<<< orphan*/  discovery_timeout; int /*<<< orphan*/  flags; int /*<<< orphan*/  exptime; int /*<<< orphan*/  metric; int /*<<< orphan*/  sn; int /*<<< orphan*/  frame_qlen; int /*<<< orphan*/  generation; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int MPATH_INFO_DISCOVERY_RETRIES ; 
 int MPATH_INFO_DISCOVERY_TIMEOUT ; 
 int MPATH_INFO_EXPTIME ; 
 int MPATH_INFO_FLAGS ; 
 int MPATH_INFO_FRAME_QLEN ; 
 int MPATH_INFO_HOP_COUNT ; 
 int MPATH_INFO_METRIC ; 
 int MPATH_INFO_PATH_CHANGE ; 
 int MPATH_INFO_SN ; 
 int /*<<< orphan*/  NL80211_ATTR_GENERATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_MPATH_INFO ; 
 int /*<<< orphan*/  NL80211_ATTR_MPATH_NEXT_HOP ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_MPATH ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_DISCOVERY_RETRIES ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_DISCOVERY_TIMEOUT ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_EXPTIME ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_FLAGS ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_FRAME_QLEN ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_HOP_COUNT ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_METRIC ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_PATH_CHANGE ; 
 int /*<<< orphan*/  NL80211_MPATH_INFO_SN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,void*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *msg, u32 portid, u32 seq,
				int flags, struct net_device *dev,
				u8 *dst, u8 *next_hop,
				struct mpath_info *pinfo)
{
	void *hdr;
	struct nlattr *pinfoattr;

	hdr = FUNC2(msg, portid, seq, flags, NL80211_CMD_NEW_MPATH);
	if (!hdr)
		return -1;

	if (FUNC6(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC5(msg, NL80211_ATTR_MAC, ETH_ALEN, dst) ||
	    FUNC5(msg, NL80211_ATTR_MPATH_NEXT_HOP, ETH_ALEN, next_hop) ||
	    FUNC6(msg, NL80211_ATTR_GENERATION, pinfo->generation))
		goto nla_put_failure;

	pinfoattr = FUNC4(msg, NL80211_ATTR_MPATH_INFO);
	if (!pinfoattr)
		goto nla_put_failure;
	if ((pinfo->filled & MPATH_INFO_FRAME_QLEN) &&
	    FUNC6(msg, NL80211_MPATH_INFO_FRAME_QLEN,
			pinfo->frame_qlen))
		goto nla_put_failure;
	if (((pinfo->filled & MPATH_INFO_SN) &&
	     FUNC6(msg, NL80211_MPATH_INFO_SN, pinfo->sn)) ||
	    ((pinfo->filled & MPATH_INFO_METRIC) &&
	     FUNC6(msg, NL80211_MPATH_INFO_METRIC,
			 pinfo->metric)) ||
	    ((pinfo->filled & MPATH_INFO_EXPTIME) &&
	     FUNC6(msg, NL80211_MPATH_INFO_EXPTIME,
			 pinfo->exptime)) ||
	    ((pinfo->filled & MPATH_INFO_FLAGS) &&
	     FUNC7(msg, NL80211_MPATH_INFO_FLAGS,
			pinfo->flags)) ||
	    ((pinfo->filled & MPATH_INFO_DISCOVERY_TIMEOUT) &&
	     FUNC6(msg, NL80211_MPATH_INFO_DISCOVERY_TIMEOUT,
			 pinfo->discovery_timeout)) ||
	    ((pinfo->filled & MPATH_INFO_DISCOVERY_RETRIES) &&
	     FUNC7(msg, NL80211_MPATH_INFO_DISCOVERY_RETRIES,
			pinfo->discovery_retries)) ||
	    ((pinfo->filled & MPATH_INFO_HOP_COUNT) &&
	     FUNC7(msg, NL80211_MPATH_INFO_HOP_COUNT,
			pinfo->hop_count)) ||
	    ((pinfo->filled & MPATH_INFO_PATH_CHANGE) &&
	     FUNC6(msg, NL80211_MPATH_INFO_PATH_CHANGE,
			 pinfo->path_change_count)))
		goto nla_put_failure;

	FUNC3(msg, pinfoattr);

	FUNC1(msg, hdr);
	return 0;

 nla_put_failure:
	FUNC0(msg, hdr);
	return -EMSGSIZE;
}