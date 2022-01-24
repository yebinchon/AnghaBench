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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* dcbnl_ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* getpgbwgcfgtx ) (struct net_device*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getpgbwgcfgrx ) (struct net_device*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getpgtccfgtx ) (struct net_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* getpgtccfgrx ) (struct net_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 size_t DCB_ATTR_PG_CFG ; 
 int /*<<< orphan*/  DCB_ATTR_VALUE_UNDEFINED ; 
 int DCB_PG_ATTR_BW_ID_0 ; 
 int DCB_PG_ATTR_BW_ID_7 ; 
 size_t DCB_PG_ATTR_BW_ID_ALL ; 
 int /*<<< orphan*/  DCB_PG_ATTR_MAX ; 
 int DCB_PG_ATTR_TC_0 ; 
 int DCB_PG_ATTR_TC_7 ; 
 size_t DCB_PG_ATTR_TC_ALL ; 
 size_t DCB_TC_ATTR_PARAM_ALL ; 
 size_t DCB_TC_ATTR_PARAM_BW_PCT ; 
 int /*<<< orphan*/  DCB_TC_ATTR_PARAM_MAX ; 
 size_t DCB_TC_ATTR_PARAM_PGID ; 
 size_t DCB_TC_ATTR_PARAM_STRICT_PRIO ; 
 size_t DCB_TC_ATTR_PARAM_UP_MAPPING ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  dcbnl_pg_nest ; 
 int /*<<< orphan*/  dcbnl_tc_param_nest ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int) ; 
 int FUNC3 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct net_device *netdev, struct nlmsghdr *nlh,
			     struct nlattr **tb, struct sk_buff *skb, int dir)
{
	struct nlattr *pg_nest, *param_nest, *data;
	struct nlattr *pg_tb[DCB_PG_ATTR_MAX + 1];
	struct nlattr *param_tb[DCB_TC_ATTR_PARAM_MAX + 1];
	u8 prio, pgid, tc_pct, up_map;
	int ret;
	int getall = 0;
	int i;

	if (!tb[DCB_ATTR_PG_CFG])
		return -EINVAL;

	if (!netdev->dcbnl_ops->getpgtccfgtx ||
	    !netdev->dcbnl_ops->getpgtccfgrx ||
	    !netdev->dcbnl_ops->getpgbwgcfgtx ||
	    !netdev->dcbnl_ops->getpgbwgcfgrx)
		return -EOPNOTSUPP;

	ret = FUNC3(pg_tb, DCB_PG_ATTR_MAX,
					  tb[DCB_ATTR_PG_CFG], dcbnl_pg_nest,
					  NULL);
	if (ret)
		return ret;

	pg_nest = FUNC2(skb, DCB_ATTR_PG_CFG);
	if (!pg_nest)
		return -EMSGSIZE;

	if (pg_tb[DCB_PG_ATTR_TC_ALL])
		getall = 1;

	for (i = DCB_PG_ATTR_TC_0; i <= DCB_PG_ATTR_TC_7; i++) {
		if (!getall && !pg_tb[i])
			continue;

		if (pg_tb[DCB_PG_ATTR_TC_ALL])
			data = pg_tb[DCB_PG_ATTR_TC_ALL];
		else
			data = pg_tb[i];
		ret = FUNC3(param_tb,
						  DCB_TC_ATTR_PARAM_MAX, data,
						  dcbnl_tc_param_nest, NULL);
		if (ret)
			goto err_pg;

		param_nest = FUNC2(skb, i);
		if (!param_nest)
			goto err_pg;

		pgid = DCB_ATTR_VALUE_UNDEFINED;
		prio = DCB_ATTR_VALUE_UNDEFINED;
		tc_pct = DCB_ATTR_VALUE_UNDEFINED;
		up_map = DCB_ATTR_VALUE_UNDEFINED;

		if (dir) {
			/* Rx */
			netdev->dcbnl_ops->getpgtccfgrx(netdev,
						i - DCB_PG_ATTR_TC_0, &prio,
						&pgid, &tc_pct, &up_map);
		} else {
			/* Tx */
			netdev->dcbnl_ops->getpgtccfgtx(netdev,
						i - DCB_PG_ATTR_TC_0, &prio,
						&pgid, &tc_pct, &up_map);
		}

		if (param_tb[DCB_TC_ATTR_PARAM_PGID] ||
		    param_tb[DCB_TC_ATTR_PARAM_ALL]) {
			ret = FUNC4(skb,
			                 DCB_TC_ATTR_PARAM_PGID, pgid);
			if (ret)
				goto err_param;
		}
		if (param_tb[DCB_TC_ATTR_PARAM_UP_MAPPING] ||
		    param_tb[DCB_TC_ATTR_PARAM_ALL]) {
			ret = FUNC4(skb,
			                 DCB_TC_ATTR_PARAM_UP_MAPPING, up_map);
			if (ret)
				goto err_param;
		}
		if (param_tb[DCB_TC_ATTR_PARAM_STRICT_PRIO] ||
		    param_tb[DCB_TC_ATTR_PARAM_ALL]) {
			ret = FUNC4(skb,
			                 DCB_TC_ATTR_PARAM_STRICT_PRIO, prio);
			if (ret)
				goto err_param;
		}
		if (param_tb[DCB_TC_ATTR_PARAM_BW_PCT] ||
		    param_tb[DCB_TC_ATTR_PARAM_ALL]) {
			ret = FUNC4(skb, DCB_TC_ATTR_PARAM_BW_PCT,
			                 tc_pct);
			if (ret)
				goto err_param;
		}
		FUNC1(skb, param_nest);
	}

	if (pg_tb[DCB_PG_ATTR_BW_ID_ALL])
		getall = 1;
	else
		getall = 0;

	for (i = DCB_PG_ATTR_BW_ID_0; i <= DCB_PG_ATTR_BW_ID_7; i++) {
		if (!getall && !pg_tb[i])
			continue;

		tc_pct = DCB_ATTR_VALUE_UNDEFINED;

		if (dir) {
			/* Rx */
			netdev->dcbnl_ops->getpgbwgcfgrx(netdev,
					i - DCB_PG_ATTR_BW_ID_0, &tc_pct);
		} else {
			/* Tx */
			netdev->dcbnl_ops->getpgbwgcfgtx(netdev,
					i - DCB_PG_ATTR_BW_ID_0, &tc_pct);
		}
		ret = FUNC4(skb, i, tc_pct);
		if (ret)
			goto err_pg;
	}

	FUNC1(skb, pg_nest);

	return 0;

err_param:
	FUNC0(skb, param_nest);
err_pg:
	FUNC0(skb, pg_nest);

	return -EMSGSIZE;
}