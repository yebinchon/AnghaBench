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
struct wpan_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int /*<<< orphan*/  snd_seq; int /*<<< orphan*/  snd_portid; struct wpan_dev** user_ptr; } ;
typedef  struct wpan_dev cfg802154_registered_device ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NLMSG_DEFAULT_SIZE ; 
 int FUNC0 (struct sk_buff*,struct genl_info*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wpan_dev*,struct wpan_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb, struct genl_info *info)
{
	struct sk_buff *msg;
	struct cfg802154_registered_device *rdev = info->user_ptr[0];
	struct wpan_dev *wdev = info->user_ptr[1];

	msg = FUNC3(NLMSG_DEFAULT_SIZE, GFP_KERNEL);
	if (!msg)
		return -ENOMEM;

	if (FUNC1(msg, info->snd_portid, info->snd_seq, 0,
				rdev, wdev) < 0) {
		FUNC2(msg);
		return -ENOBUFS;
	}

	return FUNC0(msg, info);
}