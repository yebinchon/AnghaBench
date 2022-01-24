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
struct TYPE_2__ {int (* setnumtcs ) (struct net_device*,int,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_NUMTCS ; 
 int DCB_NUMTCS_ATTR_ALL ; 
 int DCB_NUMTCS_ATTR_MAX ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  dcbnl_numtcs_nest ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int FUNC1 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_buff*,size_t,int) ; 
 int FUNC3 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct nlmsghdr *nlh,
			   u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
	struct nlattr *data[DCB_NUMTCS_ATTR_MAX + 1];
	int ret;
	u8 value;
	int i;

	if (!tb[DCB_ATTR_NUMTCS])
		return -EINVAL;

	if (!netdev->dcbnl_ops->setnumtcs)
		return -EOPNOTSUPP;

	ret = FUNC1(data, DCB_NUMTCS_ATTR_MAX,
					  tb[DCB_ATTR_NUMTCS],
					  dcbnl_numtcs_nest, NULL);
	if (ret)
		return ret;

	for (i = DCB_NUMTCS_ATTR_ALL+1; i <= DCB_NUMTCS_ATTR_MAX; i++) {
		if (data[i] == NULL)
			continue;

		value = FUNC0(data[i]);

		ret = netdev->dcbnl_ops->setnumtcs(netdev, i, value);
		if (ret)
			break;
	}

	return FUNC2(skb, DCB_ATTR_NUMTCS, !!ret);
}