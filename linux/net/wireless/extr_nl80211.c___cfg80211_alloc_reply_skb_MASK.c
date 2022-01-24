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
struct wiphy {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cfg80211_registered_device {TYPE_1__* cur_cmd_info; } ;
typedef  enum nl80211_commands { ____Placeholder_nl80211_commands } nl80211_commands ;
typedef  enum nl80211_attrs { ____Placeholder_nl80211_attrs } nl80211_attrs ;
struct TYPE_2__ {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 struct sk_buff* FUNC1 (struct cfg80211_registered_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct cfg80211_registered_device* FUNC2 (struct wiphy*) ; 

struct sk_buff *FUNC3(struct wiphy *wiphy,
					   enum nl80211_commands cmd,
					   enum nl80211_attrs attr,
					   int approxlen)
{
	struct cfg80211_registered_device *rdev = FUNC2(wiphy);

	if (FUNC0(!rdev->cur_cmd_info))
		return NULL;

	return FUNC1(rdev, NULL, approxlen,
					   rdev->cur_cmd_info->snd_portid,
					   rdev->cur_cmd_info->snd_seq,
					   cmd, attr, NULL, GFP_KERNEL);
}