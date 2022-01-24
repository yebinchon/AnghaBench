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
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TIPC_MEDIA_LINK_PRI ; 
 size_t TIPC_NLA_BEARER ; 
 size_t TIPC_NLA_BEARER_DOMAIN ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_MAX ; 
 size_t TIPC_NLA_BEARER_NAME ; 
 size_t TIPC_NLA_BEARER_PROP ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_MAX ; 
 size_t TIPC_NLA_PROP_PRIO ; 
 char* FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct net*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nlattr**) ; 
 int /*<<< orphan*/  tipc_nl_bearer_policy ; 
 int FUNC5 (struct nlattr*,struct nlattr**) ; 

int FUNC6(struct sk_buff *skb, struct genl_info *info)
{
	int err;
	char *bearer;
	struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];
	struct net *net = FUNC3(skb->sk);
	u32 domain = 0;
	u32 prio;

	prio = TIPC_MEDIA_LINK_PRI;

	if (!info->attrs[TIPC_NLA_BEARER])
		return -EINVAL;

	err = FUNC2(attrs, TIPC_NLA_BEARER_MAX,
					  info->attrs[TIPC_NLA_BEARER],
					  tipc_nl_bearer_policy, info->extack);
	if (err)
		return err;

	if (!attrs[TIPC_NLA_BEARER_NAME])
		return -EINVAL;

	bearer = FUNC0(attrs[TIPC_NLA_BEARER_NAME]);

	if (attrs[TIPC_NLA_BEARER_DOMAIN])
		domain = FUNC1(attrs[TIPC_NLA_BEARER_DOMAIN]);

	if (attrs[TIPC_NLA_BEARER_PROP]) {
		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];

		err = FUNC5(attrs[TIPC_NLA_BEARER_PROP],
					      props);
		if (err)
			return err;

		if (props[TIPC_NLA_PROP_PRIO])
			prio = FUNC1(props[TIPC_NLA_PROP_PRIO]);
	}

	return FUNC4(net, bearer, domain, prio, attrs);
}