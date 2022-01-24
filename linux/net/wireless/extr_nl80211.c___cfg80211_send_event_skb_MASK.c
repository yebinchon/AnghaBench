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
struct sk_buff {scalar_t__ cb; } ;
struct nlmsghdr {scalar_t__ nlmsg_pid; } ;
struct nlattr {scalar_t__ nla_type; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  enum nl80211_multicast_groups { ____Placeholder_nl80211_multicast_groups } nl80211_multicast_groups ;

/* Variables and functions */
 scalar_t__ NL80211_ATTR_VENDOR_DATA ; 
 int NL80211_MCGRP_TESTMODE ; 
 int NL80211_MCGRP_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  nl80211_fam ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 struct nlmsghdr* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct sk_buff *skb, gfp_t gfp)
{
	struct cfg80211_registered_device *rdev = ((void **)skb->cb)[0];
	void *hdr = ((void **)skb->cb)[1];
	struct nlmsghdr *nlhdr = FUNC5(skb);
	struct nlattr *data = ((void **)skb->cb)[2];
	enum nl80211_multicast_groups mcgrp = NL80211_MCGRP_TESTMODE;

	/* clear CB data for netlink core to own from now on */
	FUNC3(skb->cb, 0, sizeof(skb->cb));

	FUNC4(skb, data);
	FUNC0(skb, hdr);

	if (nlhdr->nlmsg_pid) {
		FUNC2(FUNC6(&rdev->wiphy), skb,
				nlhdr->nlmsg_pid);
	} else {
		if (data->nla_type == NL80211_ATTR_VENDOR_DATA)
			mcgrp = NL80211_MCGRP_VENDOR;

		FUNC1(&nl80211_fam, FUNC6(&rdev->wiphy),
					skb, 0, mcgrp, gfp);
	}
}