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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_4__ {int flags; scalar_t__ max_remain_on_channel_duration; } ;
struct wireless_dev {int iftype; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; scalar_t__* attrs; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {int iftype; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct cfg80211_mgmt_tx_params {scalar_t__ wait; scalar_t__ len; int n_csa_offsets; scalar_t__* csa_offsets; int /*<<< orphan*/ * chan; scalar_t__ dont_wait_for_ack; void* buf; scalar_t__ offchan; int /*<<< orphan*/  no_cck; } ;
struct cfg80211_chan_def {int /*<<< orphan*/ * chan; } ;
struct TYPE_3__ {int /*<<< orphan*/  mgmt_tx; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_ATTR_COOKIE ; 
 size_t NL80211_ATTR_CSA_C_OFFSETS_TX ; 
 size_t NL80211_ATTR_DONT_WAIT_FOR_ACK ; 
 size_t NL80211_ATTR_DURATION ; 
 size_t NL80211_ATTR_FRAME ; 
 size_t NL80211_ATTR_OFFCHANNEL_TX_OK ; 
 int /*<<< orphan*/  NL80211_ATTR_PAD ; 
 size_t NL80211_ATTR_TX_NO_CCK_RATE ; 
 size_t NL80211_ATTR_WIPHY_FREQ ; 
 int /*<<< orphan*/  NL80211_CMD_FRAME ; 
#define  NL80211_IFTYPE_ADHOC 136 
#define  NL80211_IFTYPE_AP 135 
#define  NL80211_IFTYPE_AP_VLAN 134 
#define  NL80211_IFTYPE_MESH_POINT 133 
#define  NL80211_IFTYPE_NAN 132 
#define  NL80211_IFTYPE_P2P_CLIENT 131 
#define  NL80211_IFTYPE_P2P_DEVICE 130 
#define  NL80211_IFTYPE_P2P_GO 129 
#define  NL80211_IFTYPE_STATION 128 
 scalar_t__ NL80211_MIN_REMAIN_ON_CHANNEL_TIME ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int WIPHY_FLAG_OFFCHAN_TX ; 
 int FUNC0 (struct wireless_dev*,struct wireless_dev*,struct cfg80211_mgmt_tx_params*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int FUNC3 (struct sk_buff*,struct genl_info*) ; 
 int FUNC4 (struct wireless_dev*,struct genl_info*,struct cfg80211_chan_def*) ; 
 void* FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 void* FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 struct sk_buff* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC15(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct wireless_dev *wdev = info->user_ptr[1];
	struct cfg80211_chan_def chandef;
	int err;
	void *hdr = NULL;
	u64 cookie;
	struct sk_buff *msg = NULL;
	struct cfg80211_mgmt_tx_params params = {
		.dont_wait_for_ack =
			info->attrs[NL80211_ATTR_DONT_WAIT_FOR_ACK],
	};

	if (!info->attrs[NL80211_ATTR_FRAME])
		return -EINVAL;

	if (!rdev->ops->mgmt_tx)
		return -EOPNOTSUPP;

	switch (wdev->iftype) {
	case NL80211_IFTYPE_P2P_DEVICE:
		if (!info->attrs[NL80211_ATTR_WIPHY_FREQ])
			return -EINVAL;
	case NL80211_IFTYPE_STATION:
	case NL80211_IFTYPE_ADHOC:
	case NL80211_IFTYPE_P2P_CLIENT:
	case NL80211_IFTYPE_AP:
	case NL80211_IFTYPE_AP_VLAN:
	case NL80211_IFTYPE_MESH_POINT:
	case NL80211_IFTYPE_P2P_GO:
		break;
	case NL80211_IFTYPE_NAN:
	default:
		return -EOPNOTSUPP;
	}

	if (info->attrs[NL80211_ATTR_DURATION]) {
		if (!(rdev->wiphy.flags & WIPHY_FLAG_OFFCHAN_TX))
			return -EINVAL;
		params.wait = FUNC8(info->attrs[NL80211_ATTR_DURATION]);

		/*
		 * We should wait on the channel for at least a minimum amount
		 * of time (10ms) but no longer than the driver supports.
		 */
		if (params.wait < NL80211_MIN_REMAIN_ON_CHANNEL_TIME ||
		    params.wait > rdev->wiphy.max_remain_on_channel_duration)
			return -EINVAL;
	}

	params.offchan = info->attrs[NL80211_ATTR_OFFCHANNEL_TX_OK];

	if (params.offchan && !(rdev->wiphy.flags & WIPHY_FLAG_OFFCHAN_TX))
		return -EINVAL;

	params.no_cck = FUNC7(info->attrs[NL80211_ATTR_TX_NO_CCK_RATE]);

	/* get the channel if any has been specified, otherwise pass NULL to
	 * the driver. The latter will use the current one
	 */
	chandef.chan = NULL;
	if (info->attrs[NL80211_ATTR_WIPHY_FREQ]) {
		err = FUNC4(rdev, info, &chandef);
		if (err)
			return err;
	}

	if (!chandef.chan && params.offchan)
		return -EINVAL;

	FUNC13(wdev);
	if (params.offchan && !FUNC1(wdev)) {
		FUNC14(wdev);
		return -EBUSY;
	}
	FUNC14(wdev);

	params.buf = FUNC6(info->attrs[NL80211_ATTR_FRAME]);
	params.len = FUNC9(info->attrs[NL80211_ATTR_FRAME]);

	if (info->attrs[NL80211_ATTR_CSA_C_OFFSETS_TX]) {
		int len = FUNC9(info->attrs[NL80211_ATTR_CSA_C_OFFSETS_TX]);
		int i;

		if (len % sizeof(u16))
			return -EINVAL;

		params.n_csa_offsets = len / sizeof(u16);
		params.csa_offsets =
			FUNC6(info->attrs[NL80211_ATTR_CSA_C_OFFSETS_TX]);

		/* check that all the offsets fit the frame */
		for (i = 0; i < params.n_csa_offsets; i++) {
			if (params.csa_offsets[i] >= params.len)
				return -EINVAL;
		}
	}

	if (!params.dont_wait_for_ack) {
		msg = FUNC12(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
		if (!msg)
			return -ENOMEM;

		hdr = FUNC5(msg, info->snd_portid, info->snd_seq, 0,
				     NL80211_CMD_FRAME);
		if (!hdr) {
			err = -ENOBUFS;
			goto free_msg;
		}
	}

	params.chan = chandef.chan;
	err = FUNC0(rdev, wdev, &params, &cookie);
	if (err)
		goto free_msg;

	if (msg) {
		if (FUNC10(msg, NL80211_ATTR_COOKIE, cookie,
				      NL80211_ATTR_PAD))
			goto nla_put_failure;

		FUNC2(msg, hdr);
		return FUNC3(msg, info);
	}

	return 0;

 nla_put_failure:
	err = -ENOBUFS;
 free_msg:
	FUNC11(msg);
	return err;
}