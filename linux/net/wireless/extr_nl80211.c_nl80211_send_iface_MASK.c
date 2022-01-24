#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct wireless_dev {int iftype; TYPE_1__* current_bss; int /*<<< orphan*/  const* ssid; int /*<<< orphan*/  const ssid_len; int /*<<< orphan*/  use_4addr; struct net_device* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int ifindex; int /*<<< orphan*/  name; } ;
struct cfg80211_txq_stats {int dummy; } ;
struct cfg80211_registered_device {int wiphy_idx; int devlist_generation; TYPE_2__* ops; } ;
struct cfg80211_chan_def {int dummy; } ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
struct TYPE_4__ {scalar_t__ get_txq_stats; scalar_t__ get_tx_power; scalar_t__ get_channel; } ;
struct TYPE_3__ {int /*<<< orphan*/  pub; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EMSGSIZE ; 
 int /*<<< orphan*/  const ETH_ALEN ; 
 int /*<<< orphan*/  NL80211_ATTR_4ADDR ; 
 int /*<<< orphan*/  NL80211_ATTR_GENERATION ; 
 int /*<<< orphan*/  NL80211_ATTR_IFINDEX ; 
 int /*<<< orphan*/  NL80211_ATTR_IFNAME ; 
 int /*<<< orphan*/  NL80211_ATTR_IFTYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_ATTR_SSID ; 
 int /*<<< orphan*/  NL80211_ATTR_TXQ_STATS ; 
 int /*<<< orphan*/  NL80211_ATTR_WDEV ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY_TX_POWER_LEVEL ; 
 int NL80211_CMD_DEL_INTERFACE ; 
 int NL80211_CMD_NEW_INTERFACE ; 
 int NL80211_CMD_SET_INTERFACE ; 
#define  NL80211_IFTYPE_ADHOC 131 
#define  NL80211_IFTYPE_AP 130 
#define  NL80211_IFTYPE_P2P_CLIENT 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  WLAN_EID_SSID ; 
 int cfg80211_rdev_list_generation ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct cfg80211_txq_stats*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*,struct cfg80211_chan_def*) ; 
 void* FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_chan_def*) ; 
 int FUNC16 (struct cfg80211_registered_device*,struct wireless_dev*,int*) ; 
 int FUNC17 (struct cfg80211_registered_device*,struct wireless_dev*,struct cfg80211_txq_stats*) ; 
 int /*<<< orphan*/  const* FUNC18 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC20 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC21 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC22(struct sk_buff *msg, u32 portid, u32 seq, int flags,
			      struct cfg80211_registered_device *rdev,
			      struct wireless_dev *wdev,
			      enum nl80211_commands cmd)
{
	struct net_device *dev = wdev->netdev;
	void *hdr;

	FUNC1(cmd != NL80211_CMD_NEW_INTERFACE &&
		cmd != NL80211_CMD_DEL_INTERFACE &&
		cmd != NL80211_CMD_SET_INTERFACE);

	hdr = FUNC7(msg, portid, seq, flags, cmd);
	if (!hdr)
		return -1;

	if (dev &&
	    (FUNC10(msg, NL80211_ATTR_IFINDEX, dev->ifindex) ||
	     FUNC9(msg, NL80211_ATTR_IFNAME, dev->name)))
		goto nla_put_failure;

	if (FUNC10(msg, NL80211_ATTR_WIPHY, rdev->wiphy_idx) ||
	    FUNC10(msg, NL80211_ATTR_IFTYPE, wdev->iftype) ||
	    FUNC11(msg, NL80211_ATTR_WDEV, FUNC19(wdev),
			      NL80211_ATTR_PAD) ||
	    FUNC8(msg, NL80211_ATTR_MAC, ETH_ALEN, FUNC18(wdev)) ||
	    FUNC10(msg, NL80211_ATTR_GENERATION,
			rdev->devlist_generation ^
			(cfg80211_rdev_list_generation << 2)) ||
	    FUNC12(msg, NL80211_ATTR_4ADDR, wdev->use_4addr))
		goto nla_put_failure;

	if (rdev->ops->get_channel) {
		int ret;
		struct cfg80211_chan_def chandef = {};

		ret = FUNC15(rdev, wdev, &chandef);
		if (ret == 0) {
			if (FUNC6(msg, &chandef))
				goto nla_put_failure;
		}
	}

	if (rdev->ops->get_tx_power) {
		int dbm, ret;

		ret = FUNC16(rdev, wdev, &dbm);
		if (ret == 0 &&
		    FUNC10(msg, NL80211_ATTR_WIPHY_TX_POWER_LEVEL,
				FUNC0(dbm)))
			goto nla_put_failure;
	}

	FUNC20(wdev);
	switch (wdev->iftype) {
	case NL80211_IFTYPE_AP:
		if (wdev->ssid_len &&
		    FUNC8(msg, NL80211_ATTR_SSID, wdev->ssid_len, wdev->ssid))
			goto nla_put_failure_locked;
		break;
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_ADHOC: {
		const u8 *ssid_ie;
		if (!wdev->current_bss)
			break;
		FUNC13();
		ssid_ie = FUNC4(&wdev->current_bss->pub,
					       WLAN_EID_SSID);
		if (ssid_ie &&
		    FUNC8(msg, NL80211_ATTR_SSID, ssid_ie[1], ssid_ie + 2))
			goto nla_put_failure_rcu_locked;
		FUNC14();
		break;
		}
	default:
		/* nothing */
		break;
	}
	FUNC21(wdev);

	if (rdev->ops->get_txq_stats) {
		struct cfg80211_txq_stats txqstats = {};
		int ret = FUNC17(rdev, wdev, &txqstats);

		if (ret == 0 &&
		    !FUNC5(msg, &txqstats,
					   NL80211_ATTR_TXQ_STATS))
			goto nla_put_failure;
	}

	FUNC3(msg, hdr);
	return 0;

 nla_put_failure_rcu_locked:
	FUNC14();
 nla_put_failure_locked:
	FUNC21(wdev);
 nla_put_failure:
	FUNC2(msg, hdr);
	return -EMSGSIZE;
}