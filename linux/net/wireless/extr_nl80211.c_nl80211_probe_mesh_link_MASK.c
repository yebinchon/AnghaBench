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
struct wireless_dev {scalar_t__ iftype; } ;
struct station_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int /*<<< orphan*/ * attrs; struct net_device** user_ptr; } ;
struct ethhdr {int dummy; } ;
struct cfg80211_registered_device {int /*<<< orphan*/ * dev_addr; TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  get_station; int /*<<< orphan*/  probe_mesh_link; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct genl_info*,char*) ; 
 size_t NL80211_ATTR_FRAME ; 
 size_t NL80211_ATTR_MAC ; 
 scalar_t__ NL80211_IFTYPE_MESH_POINT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,struct station_info*) ; 
 int FUNC6 (struct net_device*,struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,size_t) ; 

__attribute__((used)) static int FUNC7(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct station_info sinfo = {};
	const u8 *buf;
	size_t len;
	u8 *dest;
	int err;

	if (!rdev->ops->probe_mesh_link || !rdev->ops->get_station)
		return -EOPNOTSUPP;

	if (!info->attrs[NL80211_ATTR_MAC] ||
	    !info->attrs[NL80211_ATTR_FRAME]) {
		FUNC0(info, "Frame or MAC missing");
		return -EINVAL;
	}

	if (wdev->iftype != NL80211_IFTYPE_MESH_POINT)
		return -EOPNOTSUPP;

	dest = FUNC3(info->attrs[NL80211_ATTR_MAC]);
	buf = FUNC3(info->attrs[NL80211_ATTR_FRAME]);
	len = FUNC4(info->attrs[NL80211_ATTR_FRAME]);

	if (len < sizeof(struct ethhdr))
		return -EINVAL;

	if (!FUNC1(buf, dest) || FUNC2(buf) ||
	    !FUNC1(buf + ETH_ALEN, dev->dev_addr))
		return -EINVAL;

	err = FUNC5(rdev, dev, dest, &sinfo);
	if (err)
		return err;

	return FUNC6(rdev, dev, dest, buf, len);
}