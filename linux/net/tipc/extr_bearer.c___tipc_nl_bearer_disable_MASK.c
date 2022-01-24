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
struct tipc_bearer {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t TIPC_NLA_BEARER ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_MAX ; 
 size_t TIPC_NLA_BEARER_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct net*,struct tipc_bearer*) ; 
 char* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tipc_bearer* FUNC4 (struct net*,char*) ; 
 int /*<<< orphan*/  tipc_nl_bearer_policy ; 

int FUNC5(struct sk_buff *skb, struct genl_info *info)
{
	int err;
	char *name;
	struct tipc_bearer *bearer;
	struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];
	struct net *net = FUNC3(skb->sk);

	if (!info->attrs[TIPC_NLA_BEARER])
		return -EINVAL;

	err = FUNC2(attrs, TIPC_NLA_BEARER_MAX,
					  info->attrs[TIPC_NLA_BEARER],
					  tipc_nl_bearer_policy, info->extack);
	if (err)
		return err;

	if (!attrs[TIPC_NLA_BEARER_NAME])
		return -EINVAL;

	name = FUNC1(attrs[TIPC_NLA_BEARER_NAME]);

	bearer = FUNC4(net, name);
	if (!bearer)
		return -EINVAL;

	FUNC0(net, bearer);

	return 0;
}