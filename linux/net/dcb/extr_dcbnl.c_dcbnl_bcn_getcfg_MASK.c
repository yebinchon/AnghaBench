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
struct TYPE_2__ {int /*<<< orphan*/  (* getbcncfg ) (struct net_device*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getbcnrp ) (struct net_device*,int,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_BCN ; 
 size_t DCB_BCN_ATTR_ALL ; 
 int DCB_BCN_ATTR_BCNA_0 ; 
 int /*<<< orphan*/  DCB_BCN_ATTR_MAX ; 
 int DCB_BCN_ATTR_RI ; 
 int DCB_BCN_ATTR_RP_0 ; 
 int DCB_BCN_ATTR_RP_7 ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  dcbnl_bcn_nest ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,size_t) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *netdev, struct nlmsghdr *nlh,
			    u32 seq, struct nlattr **tb, struct sk_buff *skb)
{
	struct nlattr *bcn_nest;
	struct nlattr *bcn_tb[DCB_BCN_ATTR_MAX + 1];
	u8 value_byte;
	u32 value_integer;
	int ret;
	bool getall = false;
	int i;

	if (!tb[DCB_ATTR_BCN])
		return -EINVAL;

	if (!netdev->dcbnl_ops->getbcnrp ||
	    !netdev->dcbnl_ops->getbcncfg)
		return -EOPNOTSUPP;

	ret = FUNC3(bcn_tb, DCB_BCN_ATTR_MAX,
					  tb[DCB_ATTR_BCN], dcbnl_bcn_nest,
					  NULL);
	if (ret)
		return ret;

	bcn_nest = FUNC2(skb, DCB_ATTR_BCN);
	if (!bcn_nest)
		return -EMSGSIZE;

	if (bcn_tb[DCB_BCN_ATTR_ALL])
		getall = true;

	for (i = DCB_BCN_ATTR_RP_0; i <= DCB_BCN_ATTR_RP_7; i++) {
		if (!getall && !bcn_tb[i])
			continue;

		netdev->dcbnl_ops->getbcnrp(netdev, i - DCB_BCN_ATTR_RP_0,
		                            &value_byte);
		ret = FUNC5(skb, i, value_byte);
		if (ret)
			goto err_bcn;
	}

	for (i = DCB_BCN_ATTR_BCNA_0; i <= DCB_BCN_ATTR_RI; i++) {
		if (!getall && !bcn_tb[i])
			continue;

		netdev->dcbnl_ops->getbcncfg(netdev, i,
		                             &value_integer);
		ret = FUNC4(skb, i, value_integer);
		if (ret)
			goto err_bcn;
	}

	FUNC1(skb, bcn_nest);

	return 0;

err_bcn:
	FUNC0(skb, bcn_nest);
	return ret;
}