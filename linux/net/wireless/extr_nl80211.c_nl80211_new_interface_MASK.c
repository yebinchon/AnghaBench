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
struct wireless_dev {int /*<<< orphan*/  mesh_id_up_len; int /*<<< orphan*/  ssid; int /*<<< orphan*/  owner_nlportid; } ;
struct vif_params {int use_4addr; int /*<<< orphan*/  macaddr; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; scalar_t__* attrs; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_4__ {int features; } ;
struct cfg80211_registered_device {TYPE_2__ wiphy; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  params ;
typedef  enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_3__ {int /*<<< orphan*/  add_virtual_intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IEEE80211_MAX_MESH_ID_LEN ; 
 int /*<<< orphan*/  IEEE80211_MAX_SSID_LEN ; 
 scalar_t__ FUNC1 (struct wireless_dev*) ; 
 int /*<<< orphan*/  NET_NAME_USER ; 
 size_t NL80211_ATTR_4ADDR ; 
 size_t NL80211_ATTR_IFNAME ; 
 size_t NL80211_ATTR_IFTYPE ; 
 size_t NL80211_ATTR_MAC ; 
 size_t NL80211_ATTR_MESH_ID ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 int /*<<< orphan*/  NL80211_CMD_NEW_INTERFACE ; 
 int NL80211_FEATURE_MAC_ON_CREATE ; 
#define  NL80211_IFTYPE_MESH_POINT 130 
#define  NL80211_IFTYPE_NAN 129 
#define  NL80211_IFTYPE_P2P_DEVICE 128 
 int NL80211_IFTYPE_UNSPECIFIED ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC2 (struct wireless_dev*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct cfg80211_registered_device*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct cfg80211_registered_device*,struct wireless_dev*) ; 
 int FUNC7 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct vif_params*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct cfg80211_registered_device*,int,struct genl_info*,struct vif_params*) ; 
 scalar_t__ FUNC12 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct cfg80211_registered_device*,struct wireless_dev*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct cfg80211_registered_device*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 struct sk_buff* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct wireless_dev* FUNC21 (struct cfg80211_registered_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct vif_params*) ; 
 int /*<<< orphan*/  FUNC22 (struct wireless_dev*) ; 
 int /*<<< orphan*/  FUNC23 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC24(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct vif_params params;
	struct wireless_dev *wdev;
	struct sk_buff *msg;
	int err;
	enum nl80211_iftype type = NL80211_IFTYPE_UNSPECIFIED;

	/* to avoid failing a new interface creation due to pending removal */
	FUNC4(rdev);

	FUNC10(&params, 0, sizeof(params));

	if (!info->attrs[NL80211_ATTR_IFNAME])
		return -EINVAL;

	if (info->attrs[NL80211_ATTR_IFTYPE])
		type = FUNC15(info->attrs[NL80211_ATTR_IFTYPE]);

	if (!rdev->ops->add_virtual_intf)
		return -EOPNOTSUPP;

	if ((type == NL80211_IFTYPE_P2P_DEVICE || type == NL80211_IFTYPE_NAN ||
	     rdev->wiphy.features & NL80211_FEATURE_MAC_ON_CREATE) &&
	    info->attrs[NL80211_ATTR_MAC]) {
		FUNC18(params.macaddr, info->attrs[NL80211_ATTR_MAC],
			   ETH_ALEN);
		if (!FUNC8(params.macaddr))
			return -EADDRNOTAVAIL;
	}

	if (info->attrs[NL80211_ATTR_4ADDR]) {
		params.use_4addr = !!FUNC16(info->attrs[NL80211_ATTR_4ADDR]);
		err = FUNC13(rdev, NULL, params.use_4addr, type);
		if (err)
			return err;
	}

	if (!FUNC5(&rdev->wiphy, type, params.use_4addr, 0))
		return -EOPNOTSUPP;

	err = FUNC11(rdev, type, info, &params);
	if (err < 0)
		return err;

	msg = FUNC20(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	wdev = FUNC21(rdev,
				FUNC14(info->attrs[NL80211_ATTR_IFNAME]),
				NET_NAME_USER, type, &params);
	if (FUNC3(!wdev)) {
		FUNC19(msg);
		return -EPROTO;
	} else if (FUNC1(wdev)) {
		FUNC19(msg);
		return FUNC2(wdev);
	}

	if (info->attrs[NL80211_ATTR_SOCKET_OWNER])
		wdev->owner_nlportid = info->snd_portid;

	switch (type) {
	case NL80211_IFTYPE_MESH_POINT:
		if (!info->attrs[NL80211_ATTR_MESH_ID])
			break;
		FUNC22(wdev);
		FUNC0(IEEE80211_MAX_SSID_LEN !=
			     IEEE80211_MAX_MESH_ID_LEN);
		wdev->mesh_id_up_len =
			FUNC17(info->attrs[NL80211_ATTR_MESH_ID]);
		FUNC9(wdev->ssid, FUNC14(info->attrs[NL80211_ATTR_MESH_ID]),
		       wdev->mesh_id_up_len);
		FUNC23(wdev);
		break;
	case NL80211_IFTYPE_NAN:
	case NL80211_IFTYPE_P2P_DEVICE:
		/*
		 * P2P Device and NAN do not have a netdev, so don't go
		 * through the netdev notifier and must be added here
		 */
		FUNC6(rdev, wdev);
		break;
	default:
		break;
	}

	if (FUNC12(msg, info->snd_portid, info->snd_seq, 0,
			       rdev, wdev, NL80211_CMD_NEW_INTERFACE) < 0) {
		FUNC19(msg);
		return -ENOBUFS;
	}

	return FUNC7(msg, info);
}