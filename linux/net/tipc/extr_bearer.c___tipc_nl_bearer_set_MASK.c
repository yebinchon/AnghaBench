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
struct tipc_bearer {void* mtu; TYPE_1__* media; void* window; void* priority; void* tolerance; } ;
struct sk_buff {int /*<<< orphan*/  sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int /*<<< orphan*/  extack; int /*<<< orphan*/ * attrs; } ;
struct TYPE_2__ {scalar_t__ type_id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ TIPC_MEDIA_TYPE_UDP ; 
 size_t TIPC_NLA_BEARER ; 
 int /*<<< orphan*/  TIPC_NLA_BEARER_MAX ; 
 size_t TIPC_NLA_BEARER_NAME ; 
 size_t TIPC_NLA_BEARER_PROP ; 
 int /*<<< orphan*/  TIPC_NLA_PROP_MAX ; 
 size_t TIPC_NLA_PROP_MTU ; 
 size_t TIPC_NLA_PROP_PRIO ; 
 size_t TIPC_NLA_PROP_TOL ; 
 size_t TIPC_NLA_PROP_WIN ; 
 char* FUNC0 (struct nlattr*) ; 
 void* FUNC1 (struct nlattr*) ; 
 int FUNC2 (struct nlattr**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tipc_bearer* FUNC4 (struct net*,char*) ; 
 int /*<<< orphan*/  tipc_nl_bearer_policy ; 
 int FUNC5 (struct nlattr*,struct nlattr**) ; 
 int /*<<< orphan*/  FUNC6 (struct net*,struct tipc_bearer*,size_t) ; 
 scalar_t__ FUNC7 (void*) ; 

int FUNC8(struct sk_buff *skb, struct genl_info *info)
{
	struct tipc_bearer *b;
	struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];
	struct net *net = FUNC3(skb->sk);
	char *name;
	int err;

	if (!info->attrs[TIPC_NLA_BEARER])
		return -EINVAL;

	err = FUNC2(attrs, TIPC_NLA_BEARER_MAX,
					  info->attrs[TIPC_NLA_BEARER],
					  tipc_nl_bearer_policy, info->extack);
	if (err)
		return err;

	if (!attrs[TIPC_NLA_BEARER_NAME])
		return -EINVAL;
	name = FUNC0(attrs[TIPC_NLA_BEARER_NAME]);

	b = FUNC4(net, name);
	if (!b)
		return -EINVAL;

	if (attrs[TIPC_NLA_BEARER_PROP]) {
		struct nlattr *props[TIPC_NLA_PROP_MAX + 1];

		err = FUNC5(attrs[TIPC_NLA_BEARER_PROP],
					      props);
		if (err)
			return err;

		if (props[TIPC_NLA_PROP_TOL]) {
			b->tolerance = FUNC1(props[TIPC_NLA_PROP_TOL]);
			FUNC6(net, b, TIPC_NLA_PROP_TOL);
		}
		if (props[TIPC_NLA_PROP_PRIO])
			b->priority = FUNC1(props[TIPC_NLA_PROP_PRIO]);
		if (props[TIPC_NLA_PROP_WIN])
			b->window = FUNC1(props[TIPC_NLA_PROP_WIN]);
		if (props[TIPC_NLA_PROP_MTU]) {
			if (b->media->type_id != TIPC_MEDIA_TYPE_UDP)
				return -EINVAL;
#ifdef CONFIG_TIPC_MEDIA_UDP
			if (tipc_udp_mtu_bad(nla_get_u32
					     (props[TIPC_NLA_PROP_MTU])))
				return -EINVAL;
			b->mtu = nla_get_u32(props[TIPC_NLA_PROP_MTU]);
			tipc_node_apply_property(net, b, TIPC_NLA_PROP_MTU);
#endif
		}
	}

	return 0;
}