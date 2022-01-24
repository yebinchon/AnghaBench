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
struct net_device {TYPE_1__* netdev_ops; } ;
struct ip_tunnel_info {int mode; } ;
struct TYPE_2__ {int (* ndo_fill_metadata_dst ) (struct net_device*,struct sk_buff*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int IP_TUNNEL_INFO_TX ; 
 struct ip_tunnel_info* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct net_device*,struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 

int FUNC3(struct net_device *dev, struct sk_buff *skb)
{
	struct ip_tunnel_info *info;

	if (!dev->netdev_ops  || !dev->netdev_ops->ndo_fill_metadata_dst)
		return -EINVAL;

	info = FUNC0(skb);
	if (!info)
		return -ENOMEM;
	if (FUNC2(!(info->mode & IP_TUNNEL_INFO_TX)))
		return -EINVAL;

	return dev->netdev_ops->ndo_fill_metadata_dst(dev, skb);
}