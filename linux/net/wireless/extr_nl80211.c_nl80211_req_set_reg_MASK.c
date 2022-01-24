#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct genl_info {scalar_t__* attrs; int /*<<< orphan*/  snd_portid; } ;
typedef  enum nl80211_user_reg_hint_type { ____Placeholder_nl80211_user_reg_hint_type } nl80211_user_reg_hint_type ;

/* Variables and functions */
 int EINPROGRESS ; 
 int EINVAL ; 
 size_t NL80211_ATTR_REG_ALPHA2 ; 
 size_t NL80211_ATTR_REG_INDOOR ; 
 size_t NL80211_ATTR_SOCKET_OWNER ; 
 size_t NL80211_ATTR_USER_REG_HINT_TYPE ; 
#define  NL80211_USER_REG_HINT_CELL_BASE 130 
#define  NL80211_USER_REG_HINT_INDOOR 129 
#define  NL80211_USER_REG_HINT_USER 128 
 int /*<<< orphan*/  cfg80211_regdomain ; 
 char* FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	char *data = NULL;
	bool is_indoor;
	enum nl80211_user_reg_hint_type user_reg_hint_type;
	u32 owner_nlportid;

	/*
	 * You should only get this when cfg80211 hasn't yet initialized
	 * completely when built-in to the kernel right between the time
	 * window between nl80211_init() and regulatory_init(), if that is
	 * even possible.
	 */
	if (FUNC5(!FUNC2(cfg80211_regdomain)))
		return -EINPROGRESS;

	if (info->attrs[NL80211_ATTR_USER_REG_HINT_TYPE])
		user_reg_hint_type =
		  FUNC1(info->attrs[NL80211_ATTR_USER_REG_HINT_TYPE]);
	else
		user_reg_hint_type = NL80211_USER_REG_HINT_USER;

	switch (user_reg_hint_type) {
	case NL80211_USER_REG_HINT_USER:
	case NL80211_USER_REG_HINT_CELL_BASE:
		if (!info->attrs[NL80211_ATTR_REG_ALPHA2])
			return -EINVAL;

		data = FUNC0(info->attrs[NL80211_ATTR_REG_ALPHA2]);
		return FUNC4(data, user_reg_hint_type);
	case NL80211_USER_REG_HINT_INDOOR:
		if (info->attrs[NL80211_ATTR_SOCKET_OWNER]) {
			owner_nlportid = info->snd_portid;
			is_indoor = !!info->attrs[NL80211_ATTR_REG_INDOOR];
		} else {
			owner_nlportid = 0;
			is_indoor = true;
		}

		return FUNC3(is_indoor, owner_nlportid);
	default:
		return -EINVAL;
	}
}