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
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {int /*<<< orphan*/  conn_owner_nlportid; int /*<<< orphan*/  wiphy; } ;
struct sk_buff {int /*<<< orphan*/  len; int /*<<< orphan*/  protocol; } ;
struct nlattr {int dummy; } ;
struct net_device {int /*<<< orphan*/  ifindex; struct wireless_dev* ieee80211_ptr; } ;
struct ethhdr {int /*<<< orphan*/ * h_source; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  wiphy; int /*<<< orphan*/  wiphy_idx; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_CONTROL_PORT_ETHERTYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT ; 
 int /*<<< orphan*/  NL80211_ATTR_FRAME ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_CONTROL_PORT_FRAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ethhdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sk_buff*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct nlattr* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct cfg80211_registered_device* FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct net_device *dev,
				     struct sk_buff *skb,
				     bool unencrypted, gfp_t gfp)
{
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct cfg80211_registered_device *rdev = FUNC18(wdev->wiphy);
	struct ethhdr *ehdr = FUNC2(skb);
	const u8 *addr = ehdr->h_source;
	u16 proto = FUNC1(skb->protocol);
	struct sk_buff *msg;
	void *hdr;
	struct nlattr *frame;

	u32 nlportid = FUNC0(wdev->conn_owner_nlportid);

	if (!nlportid)
		return -ENOENT;

	msg = FUNC14(100 + skb->len, gfp);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC5(msg, 0, 0, 0, NL80211_CMD_CONTROL_PORT_FRAME);
	if (!hdr) {
		FUNC13(msg);
		return -ENOBUFS;
	}

	if (FUNC10(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC10(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	    FUNC11(msg, NL80211_ATTR_WDEV, FUNC16(wdev),
			      NL80211_ATTR_PAD) ||
	    FUNC7(msg, NL80211_ATTR_MAC, ETH_ALEN, addr) ||
	    FUNC9(msg, NL80211_ATTR_CONTROL_PORT_ETHERTYPE, proto) ||
	    (unencrypted && FUNC8(msg,
					 NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT)))
		goto nla_put_failure;

	frame = FUNC12(msg, NL80211_ATTR_FRAME, skb->len);
	if (!frame)
		goto nla_put_failure;

	FUNC15(skb, 0, FUNC6(frame), skb->len);
	FUNC3(msg, hdr);

	return FUNC4(FUNC17(&rdev->wiphy), msg, nlportid);

 nla_put_failure:
	FUNC13(msg);
	return -ENOBUFS;
}