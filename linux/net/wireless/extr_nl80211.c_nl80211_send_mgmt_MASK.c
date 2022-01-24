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
typedef  int u32 ;
struct wireless_dev {struct net_device* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; } ;
struct cfg80211_registered_device {int wiphy_idx; int /*<<< orphan*/  wiphy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  NL80211_ATTR_FRAME ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_RXMGMT_FLAGS ; 
 int /*<<< orphan*/  NL80211_ATTR_RX_SIGNAL_DBM ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY_FREQ ; 
 int /*<<< orphan*/  NL80211_CMD_FRAME ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct cfg80211_registered_device *rdev,
		      struct wireless_dev *wdev, u32 nlportid,
		      int freq, int sig_dbm,
		      const u8 *buf, size_t len, u32 flags, gfp_t gfp)
{
	struct net_device *netdev = wdev->netdev;
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC7(100 + len, gfp);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, 0, 0, 0, NL80211_CMD_FRAME);
	if (!hdr) {
		FUNC6(msg);
		return -ENOMEM;
	}

	if (FUNC4(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    (netdev && FUNC4(msg, NL80211_ATTR_IFINDEX,
					netdev->ifindex)) ||
	    FUNC5(msg, NL80211_ATTR_WDEV, FUNC8(wdev),
			      NL80211_ATTR_PAD) ||
	    FUNC4(msg, NL80211_ATTR_WIPHY_FREQ, freq) ||
	    (sig_dbm &&
	     FUNC4(msg, NL80211_ATTR_RX_SIGNAL_DBM, sig_dbm)) ||
	    FUNC3(msg, NL80211_ATTR_FRAME, len, buf) ||
	    (flags &&
	     FUNC4(msg, NL80211_ATTR_RXMGMT_FLAGS, flags)))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	return FUNC1(FUNC9(&rdev->wiphy), msg, nlportid);

 nla_put_failure:
	FUNC6(msg);
	return -ENOBUFS;
}