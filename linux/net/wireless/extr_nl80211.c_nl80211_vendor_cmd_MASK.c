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
typedef  scalar_t__ u32 ;
struct wireless_dev {int /*<<< orphan*/  netdev; TYPE_2__* wiphy; } ;
struct TYPE_3__ {scalar_t__ vendor_id; scalar_t__ subcmd; } ;
struct wiphy_vendor_command {int flags; int (* doit ) (TYPE_2__*,struct wireless_dev*,void*,int) ;TYPE_1__ info; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; scalar_t__* attrs; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_4__ {int n_vendor_commands; struct wiphy_vendor_command* vendor_commands; } ;
struct cfg80211_registered_device {struct genl_info* cur_cmd_info; TYPE_2__ wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct wireless_dev*) ; 
 size_t NL80211_ATTR_VENDOR_DATA ; 
 size_t NL80211_ATTR_VENDOR_ID ; 
 size_t NL80211_ATTR_VENDOR_SUBCMD ; 
 int FUNC1 (struct wireless_dev*) ; 
 int WIPHY_VENDOR_CMD_NEED_NETDEV ; 
 int WIPHY_VENDOR_CMD_NEED_RUNNING ; 
 int WIPHY_VENDOR_CMD_NEED_WDEV ; 
 struct wireless_dev* FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct genl_info*) ; 
 int FUNC4 (struct wiphy_vendor_command const*,scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (TYPE_2__*,struct wireless_dev*,void*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct wireless_dev*) ; 

__attribute__((used)) static int FUNC10(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct wireless_dev *wdev =
		FUNC2(FUNC3(info), info->attrs);
	int i, err;
	u32 vid, subcmd;

	if (!rdev->wiphy.vendor_commands)
		return -EOPNOTSUPP;

	if (FUNC0(wdev)) {
		err = FUNC1(wdev);
		if (err != -EINVAL)
			return err;
		wdev = NULL;
	} else if (wdev->wiphy != &rdev->wiphy) {
		return -EINVAL;
	}

	if (!info->attrs[NL80211_ATTR_VENDOR_ID] ||
	    !info->attrs[NL80211_ATTR_VENDOR_SUBCMD])
		return -EINVAL;

	vid = FUNC6(info->attrs[NL80211_ATTR_VENDOR_ID]);
	subcmd = FUNC6(info->attrs[NL80211_ATTR_VENDOR_SUBCMD]);
	for (i = 0; i < rdev->wiphy.n_vendor_commands; i++) {
		const struct wiphy_vendor_command *vcmd;
		void *data = NULL;
		int len = 0;

		vcmd = &rdev->wiphy.vendor_commands[i];

		if (vcmd->info.vendor_id != vid || vcmd->info.subcmd != subcmd)
			continue;

		if (vcmd->flags & (WIPHY_VENDOR_CMD_NEED_WDEV |
				   WIPHY_VENDOR_CMD_NEED_NETDEV)) {
			if (!wdev)
				return -EINVAL;
			if (vcmd->flags & WIPHY_VENDOR_CMD_NEED_NETDEV &&
			    !wdev->netdev)
				return -EINVAL;

			if (vcmd->flags & WIPHY_VENDOR_CMD_NEED_RUNNING) {
				if (!FUNC9(wdev))
					return -ENETDOWN;
			}

			if (!vcmd->doit)
				return -EOPNOTSUPP;
		} else {
			wdev = NULL;
		}

		if (info->attrs[NL80211_ATTR_VENDOR_DATA]) {
			data = FUNC5(info->attrs[NL80211_ATTR_VENDOR_DATA]);
			len = FUNC7(info->attrs[NL80211_ATTR_VENDOR_DATA]);

			err = FUNC4(vcmd,
					info->attrs[NL80211_ATTR_VENDOR_DATA],
					info->extack);
			if (err)
				return err;
		}

		rdev->cur_cmd_info = info;
		err = vcmd->doit(&rdev->wiphy, wdev, data, len);
		rdev->cur_cmd_info = NULL;
		return err;
	}

	return -EOPNOTSUPP;
}