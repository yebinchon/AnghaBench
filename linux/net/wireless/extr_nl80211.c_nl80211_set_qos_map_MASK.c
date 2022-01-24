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
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int /*<<< orphan*/  ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int /*<<< orphan*/  ieee80211_ptr; TYPE_1__* ops; } ;
struct cfg80211_qos_map {int num_des; TYPE_2__* up; TYPE_2__* dscp_exception; } ;
struct cfg80211_dscp_exception {int dummy; } ;
struct TYPE_4__ {int up; } ;
struct TYPE_3__ {int /*<<< orphan*/  set_qos_map; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int IEEE80211_QOS_MAP_LEN_MAX ; 
 int IEEE80211_QOS_MAP_LEN_MIN ; 
 size_t NL80211_ATTR_QOS_MAP ; 
 int /*<<< orphan*/  FUNC0 (struct cfg80211_qos_map*) ; 
 struct cfg80211_qos_map* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int* FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int FUNC6 (struct net_device*,struct net_device*,struct cfg80211_qos_map*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct sk_buff *skb,
			       struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct cfg80211_qos_map *qos_map = NULL;
	struct net_device *dev = info->user_ptr[1];
	u8 *pos, len, num_des, des_len, des;
	int ret;

	if (!rdev->ops->set_qos_map)
		return -EOPNOTSUPP;

	if (info->attrs[NL80211_ATTR_QOS_MAP]) {
		pos = FUNC4(info->attrs[NL80211_ATTR_QOS_MAP]);
		len = FUNC5(info->attrs[NL80211_ATTR_QOS_MAP]);

		if (len % 2 || len < IEEE80211_QOS_MAP_LEN_MIN ||
		    len > IEEE80211_QOS_MAP_LEN_MAX)
			return -EINVAL;

		qos_map = FUNC1(sizeof(struct cfg80211_qos_map), GFP_KERNEL);
		if (!qos_map)
			return -ENOMEM;

		num_des = (len - IEEE80211_QOS_MAP_LEN_MIN) >> 1;
		if (num_des) {
			des_len = num_des *
				sizeof(struct cfg80211_dscp_exception);
			FUNC2(qos_map->dscp_exception, pos, des_len);
			qos_map->num_des = num_des;
			for (des = 0; des < num_des; des++) {
				if (qos_map->dscp_exception[des].up > 7) {
					FUNC0(qos_map);
					return -EINVAL;
				}
			}
			pos += des_len;
		}
		FUNC2(qos_map->up, pos, IEEE80211_QOS_MAP_LEN_MIN);
	}

	FUNC7(dev->ieee80211_ptr);
	ret = FUNC3(dev->ieee80211_ptr);
	if (!ret)
		ret = FUNC6(rdev, dev, qos_map);
	FUNC8(dev->ieee80211_ptr);

	FUNC0(qos_map);
	return ret;
}