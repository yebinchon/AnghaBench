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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* setpfcstate ) (struct net_device*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_PFC_STATE ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, struct nlmsghdr *nlh,
			     u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
	u8 value;

	if (!tb[DCB_ATTR_PFC_STATE])
		return -EINVAL;

	if (!netdev->dcbnl_ops->setpfcstate)
		return -EOPNOTSUPP;

	value = FUNC0(tb[DCB_ATTR_PFC_STATE]);

	netdev->dcbnl_ops->setpfcstate(netdev, value);

	return FUNC1(skb, DCB_ATTR_PFC_STATE, 0);
}