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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct wireless_dev {int iftype; int /*<<< orphan*/  current_bss; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; int /*<<< orphan*/  wiphy; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; int /*<<< orphan*/  wiphy; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_control_port; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOTCONN ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*,char*) ; 
 size_t NL80211_ATTR_CONTROL_PORT_ETHERTYPE ; 
 size_t NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT ; 
 size_t NL80211_ATTR_FRAME ; 
 size_t NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211 ; 
#define  NL80211_IFTYPE_ADHOC 133 
#define  NL80211_IFTYPE_AP 132 
#define  NL80211_IFTYPE_MESH_POINT 131 
#define  NL80211_IFTYPE_P2P_CLIENT 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct net_device*,struct net_device*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	const u8 *buf;
	size_t len;
	u8 *dest;
	u16 proto;
	bool noencrypt;
	int err;

	if (!FUNC9(&rdev->wiphy,
				     NL80211_EXT_FEATURE_CONTROL_PORT_OVER_NL80211))
		return -EOPNOTSUPP;

	if (!rdev->ops->tx_control_port)
		return -EOPNOTSUPP;

	if (!info->attrs[NL80211_ATTR_FRAME] ||
	    !info->attrs[NL80211_ATTR_MAC] ||
	    !info->attrs[NL80211_ATTR_CONTROL_PORT_ETHERTYPE]) {
		FUNC0(info, "Frame, MAC or ethertype missing");
		return -EINVAL;
	}

	FUNC7(wdev);

	switch (wdev->iftype) {
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_P2P_GO:
	case NL80211_IFTYPE_MESH_POINT:
		break;
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_P2P_CLIENT:
		if (wdev->current_bss)
			break;
		err = -ENOTCONN;
		goto out;
	default:
		err = -EOPNOTSUPP;
		goto out;
	}

	FUNC8(wdev);

	buf = FUNC2(info->attrs[NL80211_ATTR_FRAME]);
	len = FUNC5(info->attrs[NL80211_ATTR_FRAME]);
	dest = FUNC2(info->attrs[NL80211_ATTR_MAC]);
	proto = FUNC4(info->attrs[NL80211_ATTR_CONTROL_PORT_ETHERTYPE]);
	noencrypt =
		FUNC3(info->attrs[NL80211_ATTR_CONTROL_PORT_NO_ENCRYPT]);

	return FUNC6(rdev, dev, buf, len,
				    dest, FUNC1(proto), noencrypt);

 out:
	FUNC8(wdev);
	return err;
}