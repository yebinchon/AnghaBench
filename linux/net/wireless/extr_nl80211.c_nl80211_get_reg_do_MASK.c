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
struct wiphy {int regulatory_flags; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_regdomain {int dummy; } ;
struct genl_info {scalar_t__* attrs; int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;
struct cfg80211_registered_device {struct wiphy wiphy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct cfg80211_registered_device*) ; 
 size_t NL80211_ATTR_USER_REG_HINT_TYPE ; 
 size_t NL80211_ATTR_WIPHY ; 
 int /*<<< orphan*/  NL80211_CMD_GET_REG ; 
 int /*<<< orphan*/  NL80211_USER_REG_HINT_CELL_BASE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC1 (struct cfg80211_registered_device*) ; 
 int REGULATORY_WIPHY_SELF_MANAGED ; 
 scalar_t__ FUNC2 (int) ; 
 struct cfg80211_registered_device* FUNC3 (int /*<<< orphan*/ ,struct genl_info*) ; 
 int /*<<< orphan*/  cfg80211_regdomain ; 
 int /*<<< orphan*/  FUNC4 (struct genl_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,void*) ; 
 int FUNC6 (struct sk_buff*,struct genl_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct wiphy*) ; 
 struct ieee80211_regdomain* FUNC8 (struct wiphy*) ; 
 scalar_t__ FUNC9 (struct ieee80211_regdomain const*,struct sk_buff*) ; 
 void* FUNC10 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 struct sk_buff* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ieee80211_regdomain* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 () ; 

__attribute__((used)) static int FUNC18(struct sk_buff *skb, struct genl_info *info)
{
	const struct ieee80211_regdomain *regdom = NULL;
	struct cfg80211_registered_device *rdev;
	struct wiphy *wiphy = NULL;
	struct sk_buff *msg;
	void *hdr;

	msg = FUNC13(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOBUFS;

	hdr = FUNC10(msg, info->snd_portid, info->snd_seq, 0,
			     NL80211_CMD_GET_REG);
	if (!hdr)
		goto put_failure;

	if (info->attrs[NL80211_ATTR_WIPHY]) {
		bool self_managed;

		rdev = FUNC3(FUNC4(info), info);
		if (FUNC0(rdev)) {
			FUNC12(msg);
			return FUNC1(rdev);
		}

		wiphy = &rdev->wiphy;
		self_managed = wiphy->regulatory_flags &
			       REGULATORY_WIPHY_SELF_MANAGED;
		regdom = FUNC8(wiphy);

		/* a self-managed-reg device must have a private regdom */
		if (FUNC2(!regdom && self_managed)) {
			FUNC12(msg);
			return -EINVAL;
		}

		if (regdom &&
		    FUNC11(msg, NL80211_ATTR_WIPHY, FUNC7(wiphy)))
			goto nla_put_failure;
	}

	if (!wiphy && FUNC17() &&
	    FUNC11(msg, NL80211_ATTR_USER_REG_HINT_TYPE,
			NL80211_USER_REG_HINT_CELL_BASE))
		goto nla_put_failure;

	FUNC15();

	if (!regdom)
		regdom = FUNC14(cfg80211_regdomain);

	if (FUNC9(regdom, msg))
		goto nla_put_failure_rcu;

	FUNC16();

	FUNC5(msg, hdr);
	return FUNC6(msg, info);

nla_put_failure_rcu:
	FUNC16();
nla_put_failure:
put_failure:
	FUNC12(msg);
	return -EMSGSIZE;
}