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
struct nlattr {scalar_t__ nla_type; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* setbcncfg ) (struct net_device*,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* setbcnrp ) (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_BCN ; 
 int DCB_BCN_ATTR_BCNA_0 ; 
 int /*<<< orphan*/  DCB_BCN_ATTR_MAX ; 
 int DCB_BCN_ATTR_RI ; 
 int DCB_BCN_ATTR_RP_0 ; 
 int DCB_BCN_ATTR_RP_7 ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  dcbnl_pfc_up_nest ; 
 int /*<<< orphan*/  FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sk_buff*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, struct nlmsghdr *nlh,
			    u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
	struct nlattr *data[DCB_BCN_ATTR_MAX + 1];
	int i;
	int ret;
	u8 value_byte;
	u32 value_int;

	if (!tb[DCB_ATTR_BCN])
		return -EINVAL;

	if (!netdev->dcbnl_ops->setbcncfg ||
	    !netdev->dcbnl_ops->setbcnrp)
		return -EOPNOTSUPP;

	ret = FUNC2(data, DCB_BCN_ATTR_MAX,
					  tb[DCB_ATTR_BCN], dcbnl_pfc_up_nest,
					  NULL);
	if (ret)
		return ret;

	for (i = DCB_BCN_ATTR_RP_0; i <= DCB_BCN_ATTR_RP_7; i++) {
		if (data[i] == NULL)
			continue;
		value_byte = FUNC1(data[i]);
		netdev->dcbnl_ops->setbcnrp(netdev,
			data[i]->nla_type - DCB_BCN_ATTR_RP_0, value_byte);
	}

	for (i = DCB_BCN_ATTR_BCNA_0; i <= DCB_BCN_ATTR_RI; i++) {
		if (data[i] == NULL)
			continue;
		value_int = FUNC0(data[i]);
		netdev->dcbnl_ops->setbcncfg(netdev,
	                                     i, value_int);
	}

	return FUNC3(skb, DCB_ATTR_BCN, 0);
}