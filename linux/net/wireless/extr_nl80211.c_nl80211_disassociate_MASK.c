#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {scalar_t__ snd_portid; scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_5__ {scalar_t__ conn_owner_nlportid; scalar_t__ iftype; } ;
struct TYPE_4__ {int /*<<< orphan*/  disassoc; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 size_t NL80211_ATTR_IE ; 
 size_t NL80211_ATTR_LOCAL_STATE_CHANGE ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_REASON_CODE ; 
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_STATION ; 
 int FUNC0 (struct net_device*,struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	const u8 *ie = NULL, *bssid;
	int ie_len = 0, err;
	u16 reason_code;
	bool local_state_change;

	if (dev->ieee80211_ptr->conn_owner_nlportid &&
	    dev->ieee80211_ptr->conn_owner_nlportid != info->snd_portid)
		return -EPERM;

	if (!info->attrs[NL80211_ATTR_MAC])
		return -EINVAL;

	if (!info->attrs[NL80211_ATTR_REASON_CODE])
		return -EINVAL;

	if (!rdev->ops->disassoc)
		return -EOPNOTSUPP;

	if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_STATION &&
	    dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_CLIENT)
		return -EOPNOTSUPP;

	bssid = FUNC1(info->attrs[NL80211_ATTR_MAC]);

	reason_code = FUNC2(info->attrs[NL80211_ATTR_REASON_CODE]);
	if (reason_code == 0) {
		/* Reason Code 0 is reserved */
		return -EINVAL;
	}

	if (info->attrs[NL80211_ATTR_IE]) {
		ie = FUNC1(info->attrs[NL80211_ATTR_IE]);
		ie_len = FUNC3(info->attrs[NL80211_ATTR_IE]);
	}

	local_state_change = !!info->attrs[NL80211_ATTR_LOCAL_STATE_CHANGE];

	FUNC4(dev->ieee80211_ptr);
	err = FUNC0(rdev, dev, bssid, ie, ie_len, reason_code,
				     local_state_change);
	FUNC5(dev->ieee80211_ptr);
	return err;
}