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
struct net_device {int dummy; } ;
struct ieee802154_mlme_ops {TYPE_1__* llsec; } ;
struct ieee802154_llsec_key_id {int dummy; } ;
struct genl_info {int dummy; } ;
struct TYPE_2__ {int (* del_key ) (struct net_device*,struct ieee802154_llsec_key_id*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct genl_info*,struct ieee802154_llsec_key_id*) ; 
 struct ieee802154_mlme_ops* FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*,struct ieee802154_llsec_key_id*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct genl_info *info)
{
	struct ieee802154_mlme_ops *ops = FUNC1(dev);
	struct ieee802154_llsec_key_id id;

	if (FUNC0(info, &id))
		return -EINVAL;

	return ops->llsec->del_key(dev, &id);
}