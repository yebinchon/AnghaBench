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
struct wireless_dev {scalar_t__ ps; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
typedef  enum nl80211_ps_state { ____Placeholder_nl80211_ps_state } nl80211_ps_state ;
struct TYPE_2__ {int /*<<< orphan*/  set_power_mgmt; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_PS_STATE ; 
 int /*<<< orphan*/  NL80211_CMD_GET_POWER_SAVE ; 
 int NL80211_PS_DISABLED ; 
 int NL80211_PS_ENABLED ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 
 void* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	enum nl80211_ps_state ps_state;
	struct wireless_dev *wdev;
	struct net_device *dev = info->user_ptr[1];
	struct sk_buff *msg;
	void *hdr;
	int err;

	wdev = dev->ieee80211_ptr;

	if (!rdev->ops->set_power_mgmt)
		return -EOPNOTSUPP;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC2(msg, info->snd_portid, info->snd_seq, 0,
			     NL80211_CMD_GET_POWER_SAVE);
	if (!hdr) {
		err = -ENOBUFS;
		goto free_msg;
	}

	if (wdev->ps)
		ps_state = NL80211_PS_ENABLED;
	else
		ps_state = NL80211_PS_DISABLED;

	if (FUNC3(msg, NL80211_ATTR_PS_STATE, ps_state))
		goto nla_put_failure;

	FUNC0(msg, hdr);
	return FUNC1(msg, info);

 nla_put_failure:
	err = -ENOBUFS;
 free_msg:
	FUNC4(msg);
	return err;
}