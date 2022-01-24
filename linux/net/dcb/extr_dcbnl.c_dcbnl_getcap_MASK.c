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
struct TYPE_2__ {int /*<<< orphan*/  (* getcap ) (struct net_device*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_CAP ; 
 size_t DCB_CAP_ATTR_ALL ; 
 int DCB_CAP_ATTR_MAX ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  dcbnl_cap_nest ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,size_t) ; 
 int FUNC3 (struct nlattr**,int,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, struct nlmsghdr *nlh,
			u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
	struct nlattr *data[DCB_CAP_ATTR_MAX + 1], *nest;
	u8 value;
	int ret;
	int i;
	int getall = 0;

	if (!tb[DCB_ATTR_CAP])
		return -EINVAL;

	if (!netdev->dcbnl_ops->getcap)
		return -EOPNOTSUPP;

	ret = FUNC3(data, DCB_CAP_ATTR_MAX,
					  tb[DCB_ATTR_CAP], dcbnl_cap_nest,
					  NULL);
	if (ret)
		return ret;

	nest = FUNC2(skb, DCB_ATTR_CAP);
	if (!nest)
		return -EMSGSIZE;

	if (data[DCB_CAP_ATTR_ALL])
		getall = 1;

	for (i = DCB_CAP_ATTR_ALL+1; i <= DCB_CAP_ATTR_MAX; i++) {
		if (!getall && !data[i])
			continue;

		if (!netdev->dcbnl_ops->getcap(netdev, i, &value)) {
			ret = FUNC4(skb, i, value);
			if (ret) {
				FUNC0(skb, nest);
				return ret;
			}
		}
	}
	FUNC1(skb, nest);

	return 0;
}