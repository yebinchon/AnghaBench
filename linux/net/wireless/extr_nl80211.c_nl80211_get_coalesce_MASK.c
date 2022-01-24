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
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct cfg80211_registered_device** user_ptr; } ;
struct TYPE_2__ {int /*<<< orphan*/  coalesce; } ;
struct cfg80211_registered_device {scalar_t__ coalesce; TYPE_1__ wiphy; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NL80211_CMD_GET_COALESCE ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,void*) ; 
 int FUNC1 (struct sk_buff*,struct genl_info*) ; 
 scalar_t__ FUNC2 (struct sk_buff*,struct cfg80211_registered_device*) ; 
 void* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	struct cfg80211_registered_device *rdev = info->user_ptr[0];
	struct sk_buff *msg;
	void *hdr;

	if (!rdev->wiphy.coalesce)
		return -EOPNOTSUPP;

	msg = FUNC5(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	hdr = FUNC3(msg, info->snd_portid, info->snd_seq, 0,
			     NL80211_CMD_GET_COALESCE);
	if (!hdr)
		goto nla_put_failure;

	if (rdev->coalesce && FUNC2(msg, rdev))
		goto nla_put_failure;

	FUNC0(msg, hdr);
	return FUNC1(msg, info);

nla_put_failure:
	FUNC4(msg);
	return -ENOBUFS;
}