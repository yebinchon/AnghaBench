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
typedef  int /*<<< orphan*/  u32 ;
struct wiphy {int regulatory_flags; } ;
struct sk_buff {int dummy; } ;
struct netlink_callback {int /*<<< orphan*/  skb; } ;
struct ieee80211_regdomain {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  portid; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NL80211_ATTR_USER_REG_HINT_TYPE ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_ATTR_WIPHY_SELF_MANAGED_REG ; 
 int /*<<< orphan*/  NL80211_CMD_GET_REG ; 
 int /*<<< orphan*/  NL80211_USER_REG_HINT_CELL_BASE ; 
 int REGULATORY_WIPHY_SELF_MANAGED ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_callback*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct wiphy*) ; 
 scalar_t__ FUNC5 (struct ieee80211_regdomain const*,struct sk_buff*) ; 
 void* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct sk_buff *msg, struct netlink_callback *cb,
			       u32 seq, int flags, struct wiphy *wiphy,
			       const struct ieee80211_regdomain *regdom)
{
	void *hdr = FUNC6(msg, FUNC0(cb->skb).portid, seq, flags,
				   NL80211_CMD_GET_REG);

	if (!hdr)
		return -1;

	FUNC1(cb, hdr);

	if (FUNC5(regdom, msg))
		goto nla_put_failure;

	if (!wiphy && FUNC9() &&
	    FUNC8(msg, NL80211_ATTR_USER_REG_HINT_TYPE,
			NL80211_USER_REG_HINT_CELL_BASE))
		goto nla_put_failure;

	if (wiphy &&
	    FUNC8(msg, NL80211_ATTR_WIPHY, FUNC4(wiphy)))
		goto nla_put_failure;

	if (wiphy && wiphy->regulatory_flags & REGULATORY_WIPHY_SELF_MANAGED &&
	    FUNC7(msg, NL80211_ATTR_WIPHY_SELF_MANAGED_REG))
		goto nla_put_failure;

	FUNC3(msg, hdr);
	return 0;

nla_put_failure:
	FUNC2(msg, hdr);
	return -EMSGSIZE;
}