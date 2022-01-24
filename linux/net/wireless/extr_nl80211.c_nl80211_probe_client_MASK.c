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
typedef  int /*<<< orphan*/  u64 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int /*<<< orphan*/ * attrs; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  probe_client; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 size_t NL80211_ATTR_MAC ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 int /*<<< orphan*/  NL80211_CMD_PROBE_CLIENT ; 
 scalar_t__ NL80211_IFTYPE_AP ; 
 scalar_t__ NL80211_IFTYPE_P2P_GO ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct net_device*,struct net_device*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct sk_buff *skb,
				struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct net_device *dev = info->user_ptr[1];
	struct wireless_dev *wdev = dev->ieee80211_ptr;
	struct sk_buff *msg;
	void *hdr;
	const u8 *addr;
	u64 cookie;
	int err;

	if (wdev->iftype != NL80211_IFTYPE_AP &&
	    wdev->iftype != NL80211_IFTYPE_P2P_GO)
		return -EOPNOTSUPP;

	if (!info->attrs[NL80211_ATTR_MAC])
		return -EINVAL;

	if (!rdev->ops->probe_client)
		return -EOPNOTSUPP;

	msg = FUNC6(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, info->snd_portid, info->snd_seq, 0,
			     NL80211_CMD_PROBE_CLIENT);
	if (!hdr) {
		err = -ENOBUFS;
		goto free_msg;
	}

	addr = FUNC3(info->attrs[NL80211_ATTR_MAC]);

	err = FUNC7(rdev, dev, addr, &cookie);
	if (err)
		goto free_msg;

	if (FUNC4(msg, NL80211_ATTR_COOKIE, cookie,
			      NL80211_ATTR_PAD))
		goto nla_put_failure;

	FUNC0(msg, hdr);

	return FUNC1(msg, info);

 nla_put_failure:
	err = -ENOBUFS;
 free_msg:
	FUNC5(msg);
	return err;
}