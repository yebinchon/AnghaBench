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
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int ENODATA ; 
 struct inet6_dev* FUNC0 (struct net_device const*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct inet6_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sk_buff *skb, const struct net_device *dev,
			      u32 ext_filter_mask)
{
	struct inet6_dev *idev = FUNC0(dev);

	if (!idev)
		return -ENODATA;

	if (FUNC1(skb, idev, ext_filter_mask) < 0)
		return -EMSGSIZE;

	return 0;
}