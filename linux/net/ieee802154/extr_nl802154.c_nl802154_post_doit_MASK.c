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
struct wpan_dev {struct wpan_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wpan_dev** user_ptr; } ;

/* Variables and functions */
 int NL802154_FLAG_NEED_RTNL ; 
 int NL802154_FLAG_NEED_WPAN_DEV ; 
 int /*<<< orphan*/  FUNC0 (struct wpan_dev*) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static void FUNC2(const struct genl_ops *ops, struct sk_buff *skb,
			       struct genl_info *info)
{
	if (info->user_ptr[1]) {
		if (ops->internal_flags & NL802154_FLAG_NEED_WPAN_DEV) {
			struct wpan_dev *wpan_dev = info->user_ptr[1];

			if (wpan_dev->netdev)
				FUNC0(wpan_dev->netdev);
		} else {
			FUNC0(info->user_ptr[1]);
		}
	}

	if (ops->internal_flags & NL802154_FLAG_NEED_RTNL)
		FUNC1();
}